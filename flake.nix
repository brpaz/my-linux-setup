{
  description = "Laptop setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShells.default = nixpkgs.lib.mkShell {
      # List of packages to include in the devshell
      packages = with nixpkgs; [
        ansible          # Ansible package
        go-task             # Taskfile task runner
      ];

      # Additional shell setup
      shellHook = ''
         ansible-galaxy install -r requirements.yml
      '';
    };
  };
}
