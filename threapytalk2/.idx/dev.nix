{ pkgs, ... }: {
  # Define the packages to install
  packages = with pkgs; [
    python311
    python311Packages.pip
    mysql80
  ];

  # Enable MySQL service properly
  services.mysql = {
    enable = true;
    package = pkgs.mysql80;
    dataDir = "/var/lib/mysql";  # Ensure this path has the right permissions
    initialDatabases = [{ name = "therapytalk"; }];
  };

  # Ensure Python dependencies are installed using pip
  idx = {
    extensions = [];
    previews = { enable = true; };

    workspace = {
      onCreate = {
        install-python-deps = "pip install --user flask flask-mysqldb";
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
      onStart = {
        start-mysql = "systemctl start mysql";  # Correct way to start MySQL
      };
    };
  };
}
