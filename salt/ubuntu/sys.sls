
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

gnome-tweak-tool:
  pkg:
    - installed
    - onlyif: 
      - dpkg -s unity

/usr/share/applications/chromium.desktop:
  file.symlink:
    - target:  /usr/share/applications/chromium-browser.desktop
