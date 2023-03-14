{pkgs, ...}: rec {
  my-python-packages = python-packages:
    with python-packages; [
      pandas
      requests
      autopep8
      flake8
      yapf
      mypy
      lsprotocol

      #other python packages you want
    ];
  my-python =
    pkgs.python3.withPackages
    my-python-packages;
}
