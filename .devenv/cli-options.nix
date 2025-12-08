{ pkgs, lib, config, ... }: {
  languages.elixir.enable = lib.mkForce true;
}
