{
  pkgs,
  ...
}:

{
  # https://devenv.sh/basics/
  dotenv.enable = true;

  languages.ansible = {
    enable = true;
  };

  # https://devenv.sh/packages/
  packages = with pkgs; [
    go-task
    python313Packages.docker
    python313Packages.github3-py
    python313Packages.pipx
    python313Packages.libselinux
  ];

  enterShell = ''
    ansible --version
  '';
}
