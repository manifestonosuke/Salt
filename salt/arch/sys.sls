
avahi-daemon:
  service:
   - disabled: True
   - dead

ModemManager:
  service.disabled

/usr/share/applications/chromium-browser.desktop:
  file.symlink:
    - target:  /usr/share/applications/chromium.desktop

net-tools:
  pkg.installed
