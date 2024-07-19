let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
  pkgs = import nixpkgs {
    config = {
    	permittedInsecurePackages = [
				"python-2.7.18.8"
				"python-2.7.18.8-env"
			];
		};
    overlays = []; 
  };
  pefilePackage = ps: ps.callPackage ./pefile.nix {};
in

# pkgs.buildPythonPackages {
#   name="pefile";
#   buildInputs = with pkgs.python27Packages; [ pip setuptools wheel ];
#   src = ./pefile; 
# }
 

pkgs.mkShell {
  packages = with pkgs; [
    libgcc
    (python311.withPackages (python-pkgs: with python-pkgs; [
       pip
       cython
       pandas
       matplotlib
       plotly
  #    pefile
  #    find-libpython
  #    globus_compute_sdk
    ]))
    (python27.withPackages (ps: with ps; [
       pip
       (pefilePackage ps)
    ]))
  ];
}

