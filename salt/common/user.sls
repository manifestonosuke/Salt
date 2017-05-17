
local:
  group.present:
    - gid : 10000

/{{ pillar ['data'] }}:
  file.directory:
    - user: root
    - group: local
    - mode: 755
    - makedirs: True
  mount.mounted:
    - device : {{ pillar ['datadev'] }}
    - fstype : ext4
    - persist: True
    - mount: True



pierre:
  user.present:
    - uid: 10705
    - gid: local
    - home: {{ pillar ['data'] }}/home/pierre
    - createhome: False
    - shell: /bin/bash
    - password: $6$LTummqhg$QzvLKO7CGfUZBPXaNZUwXQwMUXN8YkUysY3lctm4VZPigGyWhwL86dUp68OupUDSoxXcYCHJbFzLqFZuEWGjS/
    - groups: 
      - local
      - {{ pillar ['sudogrp'] }}
      - adm


/home/pierre:
  file.symlink:
    - target : {{ pillar ['data'] }}/home/pierre
    - makedirs: True
