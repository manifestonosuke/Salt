japenv:
  pkg.installed:
    - pkgs:
      - mona-sazanami-fonts.noarch
      - sazanami-fonts-common.noarch
      - sazanami-gothic-fonts.noarch
      - sazanami-mincho-fonts.noarch
      - ibus-mozc

/etc/profile.d/scim.sh:
  file.managed:
    - source: salt://home/scim.sh
