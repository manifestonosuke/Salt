{% set data = pillar ['data'] %}
{% set localbin = "/data/local/bin" %}

dev:
  pkg:
    - installed 
    - pkgs:
      - git

syncOS.py:
  cmd.run:
    - name: wget -P {{ localbin }} https://github.com/manifestonosuke/Sysadm/blob/master/syncOS.py
    - unless: test -f {{ localbin }}/syncOS.py 

vb.py:
  cmd.run:
    - name: wget -P {{ localbin }} https://github.com/manifestonosuke/Sysadm/blob/master/vb.py
    - unless: test -f {{ localbin }}/vb.py

blk:
  cmd.run:
    - name: wget -P {{ localbin }} https://raw.githubusercontent.com/manifestonosuke/Home/master/blk
    - unless: test -f {{ localbin }}/blk
