{
  description = "Infrastructure config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  };

  outputs = { nixpkgs, ... } @ inputs:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
      devShells."x86_64-linux".default = with pkgs; mkShell {
        packages = [
          mise
          postgresql
          opentofu
          molecule
          renovate
          act
          yamllint
          ansible
          atlantis
          mongodb-tools
        ];

      };
  };
}
