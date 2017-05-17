{% from "mm.jinja" import mm with context %}

dekstop:
  pkg.installed:
    - pkgs:
      - ktorrent
      - amarok
      - calibre
      - keepassx
      - vlc
try avidemux:
  pkg.installed:
    - name: {{ mm.avidemuxqt }}
