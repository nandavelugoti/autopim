# Generated by pip2nix 0.8.0.dev1
# See https://github.com/nix-community/pip2nix

{ pkgs, fetchurl, fetchgit, fetchhg }:

self: super: {
  "future" = super.buildPythonPackage rec {
    pname = "future";
    version = "1.0.0";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/a7/b2/4140c69c6a66432916b26158687e821ba631a4c9273c474343badf84d3ba/future-1.0.0.tar.gz";
      sha256 = "01bvq2a5vgxffq8555rvwhxw161m9y54z2j5w7d1x1h7jcq6hadx";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "pefile" = super.buildPythonPackage rec {
    pname = "pefile";
    version = "2019.4.18";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/36/58/acf7f35859d541985f0a6ea3c34baaefbfaee23642cf11e85fe36453ae77/pefile-2019.4.18.tar.gz";
      sha256 = "0ibn41nblqmqfiw1gf20hf4b4ln4z7fp8qbsni4hh8bbbhqfimm5";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [
      self."future"
    ];
  };
}
