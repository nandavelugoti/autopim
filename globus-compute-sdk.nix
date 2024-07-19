{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
}

python311.pkgs.buildPythonPackage rec {
  pname = "globus-compute-sdk";
  version = "2.22.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-9b30ff6faac648ed551bbcccb5db0044c806a6f3d2f530519048eadb3dc5a876"
  };

  # do not run tests
  doCheck = false;

  # specific to buildPythonPackage, see its reference
  pyproject = true;
  build-system = [
    python311.pkgs.setuptools
    python311.pkgs.wheel
  ];
}
