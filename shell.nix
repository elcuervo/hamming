with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "ruby";
    buildInputs = [ ruby_2_7 bundler ];
}
