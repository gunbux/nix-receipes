with import <nixpkgs> {};
mkShell {
  buildInputs = [
    postgresql
    pgadmin4
  ];

  shellHook = ''
    # Run initialization commands
    mkdir -p .tmp
    initdb -D .tmp/mydb
  '';


  preDestroy = ''
      pg_ctl -D .tmp/mydb stop
      rm -rf .tmp
      rm logfile
  '';
}
