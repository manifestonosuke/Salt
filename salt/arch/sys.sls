{% from "map.jinja" import map with context %}

avahi-daemon:
  service:
   - disabled: True
   - dead

ModemManager:
  service.disabled
