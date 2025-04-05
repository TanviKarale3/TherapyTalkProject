{
  description = "Development environment for AppTherapy";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      packages = with nixpkgs.legacyPackages.x86_64-linux; [
        python311
        python311Packages.pip
        python311Packages.flask
        python311Packages.flask-mysqldb
        mysql80         # ✅ Installs MySQL Server
        mysql           # ✅ Provides MySQL client (Fix for mysqlClient)
        mariadb         # ✅ Required for MySQL dependencies
        pkg-config      # ✅ Fix missing dependency issues
      ];

      shellHook = ''
        echo "✅ MySQL and Python environment set up!"
        echo "📌 Run 'source venv/bin/activate' and install dependencies if needed."
        echo "📌 Start MySQL: nix run nixpkgs.mysql80 -- --initialize-insecure"
        echo "📌 Start MySQL server: nix run nixpkgs.mysql80 -- --datadir=/var/lib/mysql &"
        echo "📌 To connect: mysql -u root"
      '';
    };
  };
}
