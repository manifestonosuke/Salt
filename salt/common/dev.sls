{% set data = pillar ['data'] %}
{% set localbin = "/data/local/bin" %}

dev:
  pkg:
    - installed 
    - pkgs:
      - git
      - {{ pillar['vim'] }} 

syncOS.py:
  cmd.run:
    - name: wget -P {{ localbin }} https://github.com/manifestonosuke/Sysadm/blob/master/syncOS.py

vb.py:
  cmd.run:
    - name: wget -P {{ localbin }} https://github.com/manifestonosuke/Sysadm/blob/master/vb.py

blk:
  cmd.run:
    - name: wget -P {{ localbin }} https://raw.githubusercontent.com/manifestonosuke/Home/master/blk
