{% from "mm.jinja" import mm with context %}

dekstop:
  pkg.installed:
    - pkgs:
      - ktorrent
      - amarok
      - calibre
      - keepassx
      - vlc
      - {{ mm.avidemuxqt }}
