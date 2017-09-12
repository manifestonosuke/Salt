
avahi-daemon:
  service:
   - disabled: True
   - dead

networkmanager:
  pkg.installed

NetworkManager:
  service.enabled

kate:
  pkg.installed


ModemManager:
  service.disabled

/usr/share/applications/chromium-browser.desktop:
  file.symlink:
    - target:  /usr/share/applications/chromium.desktop

/usr/share/applications/chromium-browser-chromium.desktop:
  file.symlink:
    - target:  /usr/share/applications/chromium.desktop

net-tools:
  pkg.installed
