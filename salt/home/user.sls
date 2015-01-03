local:
  group.present:
    - gid : 10000

/data:
  file.directory:
    - user: root
    - group: local
    - mode: 755
    - makedirs: True
  mount.mounted:
    - device : /dev/sda4
    - fstype : ext4
    - persist: True
    - mount: True

/home/pierre:
  file.symlink:
    - target : /data/home/pierre

pierre:
  user.present:
    - uid: 2000
    - gid: local
    - home: /home/pierre
    - shell: /bin/bash
    - groups: 
      - local
      - {{ pillar ['sudogrp'] }}
      - adm
