{ pkgs ?  import <nixpkgs> {} }:
pkgs.mkShell {

  buildInputs = with pkgs; [
    mustache-go
    jsonnet
    (pkgs.writers.writeBashBin "build" ''
      ${pkgs.jsonnet}/bin/jsonnet ./pages.jsonnet > pages.json
      # ${pkgs.coreutils}/bin/cat pages.json | ${pkgs.jq}/bin/jq -c '.[]'  | ${pkgs.coreutils}/bin/split -l 1 --additional-suffix=.json
      ${pkgs.coreutils}/bin/cat pages.json \
        | ${pkgs.jq}/bin/jq --raw-output '.[] | "echo '"'"'\(.)'"'"' | ${pkgs.mustache-go}/bin/mustache error.mustache > errors/\(.code.a)\(.code.b)\(.code.c).html"' \
        | bash

    '')
  ];

}
