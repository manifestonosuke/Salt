{% from "common/map.jinja" import virt with context %}

vb:
  pkg.installed:
    - name: {{ virt.virtualbox }}
