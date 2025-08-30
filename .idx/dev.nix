{ pkgs, ... }: 


{
  channel = "stable-25.05";
  #
  # add packages you want to have available in your workspace
  #
  # consult the nix package registry for all available packages:
  # https://search.nixos.org/packages
  #
  packages = [
    pkgs.gcc
    pkgs.python312
    pkgs.python312Packages.pip
    pkgs.openssh
    pkgs.uv
  ];
  #
  # define environment variables
  #
  env = {
    "CONDA_AUTO_ACTIVATE_BASE" = "false";
  };

  #
  # add extensions from the Open VSX registry
  #
  # consult the Open VSX registry for all available extensions:
  # https://open-vsx.org/
  #

  services.docker.enable = true;
  
  idx = {
    extensions = [
      "ms-python.python"
      "charliermarsh.ruff"
      "ms-toolsai.jupyter"
    ];
    workspace = {
      onCreate = {
        uv-sync = ''
        export CC=gcc
        uv sync
        '';
      };
    };



  #
  # run commands on workspace startup
  #
  # init = ''
  #   # conda init bash
  #   # echo "Your conda environment is set up. You can create a new environment with 'conda create -n myenv python=3.9'"
  # '';

  #
  # define how your app previews should work
  #
  # for more information, see: https://www.jetpack.io/docs/devbox/config/preview/
  #
  # previews = [
  #   {
  #     command = "python -m http.server 8080";
  #     port = 8080;
  #     label = "web";
  #   }
  # ];
  };
}
