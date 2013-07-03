nimda:
  user.present:
    - uid: 20000
    - gid: local
    - home: /home/blob
    - shell: /bin/bash
    - require: 
      - group: local
      - group: pillar['sudogroup']['sudo'] 
