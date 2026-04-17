# DNS Resolution Setup

This document describes the DNS resolution architecture used on this system.

## Overview

The system uses NetworkManager's built-in dnsmasq as a local DNS proxy, with the following resolution chain:

```
Client Query → NetworkManager dnsmasq (127.0.0.1:53)
                    ├── .docker.local → 172.17.0.1 (dnsdock)
                    ├── .home.brunopaz.dev → 192.168.1.10 (AdGuard Home)
                    └── default → 192.168.1.10 → dnscrypt → quad9 DoH (or fallback)
```

## Components

### NetworkManager dnsmasq
- Acts as a local caching DNS proxy
- Resolves domain-specific queries to different upstream servers
- Uses `strict-order` to try servers in sequence
- Provides DNS caching for faster lookups

### dnscrypt-proxy (optional)
- Provides encrypted DNS via DNS-over-HTTPS (DoH)
- Routes default queries to quad9 (9.9.9.9)
- Only used as fallback when primary upstream is down
- Can be disabled via `dns_dnscrypt_enabled: false`

### dnsdock (Docker)
- Resolves `.docker` domain to Docker container IPs
- Must be running for Docker service discovery to work

### AdGuard Home (Home Lab)
- Provides ad-blocking and DNS filtering
- Can also do DoH to quad9 internally
- Used for `.home.brunopaz.dev` domain resolution

## Configuration Files

```
/etc/NetworkManager/conf.d/
└── 00-use-dnsmasq.conf        # Enable dnsmasq as DNS resolver

/etc/NetworkManager/dnsmasq.d/
├── 00-base.conf               # Base dnsmasq config (caching, strict-order)
├── 01-upstream.conf          # Default upstream DNS servers (with fallback)
└── 02-custom.conf            # Custom domain routing
```

### 00-base.conf
```conf
no-resolv
strict-order
cache-size=1000
local=/local/
domain=local
```

### 01-upstream.conf
DNS servers in order (tried sequentially):
```
server=192.168.1.10           # Primary (e.g., AdGuard)
server=127.0.0.53:53          # Fallback (dnscrypt → quad9)
```

### 02-custom.conf
Domain-specific routing:
```
server=/home.brunopaz.dev/192.168.1.10
server=/docker/172.17.0.1
```

## Ansible Role

The `roles/dns` role manages this setup with the following variables:

### Key Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `dns_upstream_servers` | Primary DNS servers (tested first) | `[192.168.1.10]` |
| `dns_dnscrypt_enabled` | Enable dnscrypt-proxy as fallback | `true` |
| `dns_dnscrypt_address` | dnscrypt listen address | `127.0.0.53` |
| `dns_dnscrypt_port` | dnscrypt listen port | `53` |
| `dns_fallback_servers` | Fallback servers (when dnscrypt disabled) | `[9.9.9.9, 1.1.1.1]` |
| `dns_custom_resolvers` | Custom domain resolvers | See below |

### Default dns_custom_resolvers
```yaml
dns_custom_resolvers:
  - { name: "homelab", domain: "home.brunopaz.dev", resolver: "192.168.1.10" }
  - { name: "docker", domain: "docker.local", resolver: "172.17.0.1" }
```

### Common Configurations

**Home with AdGuard (recommended):**
```yaml
dns_upstream_servers:
  - "192.168.1.10"
dns_dnscrypt_enabled: true
```
- Primary: AdGuard (with its own DoH to quad9)
- Fallback: dnscrypt → quad9

**Home with AdGuard + custom fallback:**
```yaml
dns_upstream_servers:
  - "192.168.1.10"
  - "1.1.1.1"
dns_dnscrypt_enabled: false
```
- Primary: AdGuard, then Cloudflare
- No dnscrypt

**No home network (away from home):**
```yaml
dns_upstream_servers: []
dns_dnscrypt_enabled: true
```
- Uses dnscrypt → quad9 directly

### Adding Custom Domains
Override in host/group vars:
```yaml
dns_custom_resolvers:
  - { name: "homelab", domain: "home.brunopaz.dev", resolver: "192.168.1.10" }
  - { name: "docker", domain: "docker.local", resolver: "172.17.0.1" }
  - { name: "mylan", domain: "mylan.home", resolver: "192.168.1.5" }
```

## Behavior

### At Home (connected to home network)
- `.home.brunopaz.dev` → 192.168.1.10 (AdGuard)
- `.docker` → 172.17.0.1 (dnsdock)
- Everything else → 192.168.1.10 (AdGuard) → quad9 DoH

### Away from Home (no home network access)
- AdGuard (192.168.1.10) is unreachable
- dnsmasq falls back to next server in order
- Default queries → dnscrypt-proxy → quad9 DoH

### Docker Resolution
- Requires dnsdock container running
- `.docker` domains resolve to container IPs
- dnsdock must be on same Docker network as containers

## Troubleshooting

### Check current DNS
```bash
resolvectl status
```

### Query dnsmasq directly
```bash
dig @127.0.0.1 example.com
```

### Check dnscrypt-proxy
```bash
systemctl status dnscrypt-proxy
```

### Restart DNS services
```bash
systemctl restart NetworkManager
```

### Verify domain routing
```bash
nslookup docker.local 127.0.0.1
nslookup home.brunopaz.dev 127.0.0.1
```

### Check DNS server order
```bash
cat /etc/NetworkManager/dnsmasq.d/01-upstream.conf
```

## Per-Connection DNS

You can set DNS per-connection in NetworkManager. These take precedence over the global dnsmasq config.

To view/set per-connection DNS:
```bash
nm-connection-editor
# Or
nmcli connection edit <name>
```

## Notes

- systemd-resolved is disabled (if present) to avoid conflicts
- `/etc/resolv.conf` points directly to dnsmasq
- Per-connection DNS in NetworkManager overrides global config
- With `strict-order`, servers are tried in sequence - first available wins
- dnscrypt-proxy is optional - can be disabled for direct fallback to quad9