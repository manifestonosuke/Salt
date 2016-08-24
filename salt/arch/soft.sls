{% from "map.jinja" import map with context %}
basic:
  pkg.installed:
    - pkgs:
      - openssh

basic-kde:
  pkg.installed:
    - pkgs:
      - dolphin
