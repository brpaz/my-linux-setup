{
  description = "Laptop configuratioansiblen";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          python312Packages.ansible
          python312Packages.github3-py
          python312Packages.docker-py
          go-task
          ansible-lint
        ];
         shellHook = ''
          ansible --version
        '';
      };
    };
}
