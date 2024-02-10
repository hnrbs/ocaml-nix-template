{ pkgs, package }:

with pkgs;
with pkgs.ocamlPackages;
mkShell {
  inputsFrom = [ package ];
  packages = [
    ocaml
    dune_3
    ocaml-lsp
    ocamlformat
  ];
}
