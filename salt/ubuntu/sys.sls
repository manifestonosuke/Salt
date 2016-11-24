
avahi-daemon:
  service:
   - disabled: True
   - dead

garbage:
  pkg.removed:
    - pkgs:
      - whoopsie
      - whoopsie-preferences

geoip-bin:
  pkg.installed

ModemManager:
  service:
   - disabled: True
   - dead

unity-tweak-tool:
  pkg:
    - installed
    - onlyif: 
      - dpkg -s unity
