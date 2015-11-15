{% from "map.jinja" import map with context %}

vb:
  pkg.installed:
    - name: {{ map.virtualbox }}
