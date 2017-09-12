basic:
  pkg.installed:
    - pkgs:
      - openssh
      - networkmanager

basic-kde:
  pkg.installed:
    - pkgs:
      - dolphin
      - konsole
      - plasma-nm
