{ pkgs, nix-filter }:

with pkgs.ocamlPackages;
buildDunePackage rec {
  pname = "json_parser";
  version = "0.0.0";

  src = with nix-filter.lib;
    filter {
      root = ./..;
      include = [ "dune-project" "src" ];
      exclude = [ ];
    };

  propagatedBuildInputs = [
    utop
  ];
}
