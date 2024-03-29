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

/home/pierre:
  file.symlink:
    - target : /{{ pillar ['data'] }}/home/pierre

pierre:
  user.present:
    - uid: 10705
    - gid: local
    - home: /home/pierre
    - shell: /bin/bash
    - groups: 
      - local
      - {{ pillar ['sudogrp'] }}
      - adm
