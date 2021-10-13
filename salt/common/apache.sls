{% set apache = salt['pillar.get']('apache') %}
{{ pillar['apache'] }}:
  pkg.installed
