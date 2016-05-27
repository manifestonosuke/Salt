dev:
  pkg:
    - installed 
    - pkgs:
      - git
      - {{ pillar['vim'] }} 

/data/local/bin/syncOS.py:
  file.managed:
    - source: https://github.com/manifestonosuke/Sysadm/blob/master/syncOS.py

/data/local/bin/vb.py:
  file.managed:
    - source: https://github.com/manifestonosuke/Sysadm/blob/master/vb.py
