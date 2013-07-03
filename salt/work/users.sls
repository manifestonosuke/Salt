pierre:
  user.present:
    - uid: 10705
    - gid: local
    - home: /home/pierre
    - shell: /bin/bash
    - groups: [adm,{{ pillar['sudo'] }}]

/home/pierre:
  file.symlink:
    - target: /data/home/pierre

