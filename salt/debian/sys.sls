
avahi-daemon:
  service:
   - disabled: True
   - dead

garbage:
  pkg.removed:
    - pkgs:
      - openssh-askpass
      - whoopsie
      - at-spi2-core
      - packagekit

geoip-bin:
  pkg.installed

ModemManager:
  service:
   - disabled: True
   - dead

/usr/share/applications/chromium-browser.desktop:
  file.symlink:
    - target: /usr/share/applications/chromium.desktop 

/usr/share/applications/chromium-browser-chromium.desktop:
  file.symlink:
    - target: /usr/share/applications/chromium.desktop 
