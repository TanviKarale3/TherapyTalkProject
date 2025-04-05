{ pkgs, ... }: {
  channel = "stable-24.05"; # Ensure you're using a stable channel

  packages = [
    pkgs.python311
    pkgs.python311Packages.pip
    pkgs.python311Packages.flask
    pkgs.python311Packages.flask_mysqldb
    pkgs.mysql80          # ✅ MySQL Server
    pkgs.mariadbClient    # ✅ MySQL Client (instead of pkgs.mysql)
    pkgs.pkg-config       # ✅ Fix missing dependency issues
    pkgs.sudo             # ✅ Ensure sudo is available
  ];

  services.mysql = {
    enable = true;
    package = pkgs.mysql80;
    initialDatabases = [{ name = "therapytalk"; }];
  };

  env = {};  # Define environment variables if needed

  idx = {
    extensions = [];
    previews = { enable = true; previews = {}; };

    workspace = {
      onCreate = {
        install-python-deps = "pip install flask flask-mysqldb mysqlclient";
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
      onStart = {
        start-mysql = "mysqld_safe --datadir=/var/lib/mysql &";
        mysql-init = "mysql.server start";  # ✅ Correct MySQL startup command
      };
    };
  };
}
//
