blob:
  user.present:
    - uid: 8700
    - gid: local
    - home: /home/blob
    - shell: /bin/bash
    - require: 
      - group: local
      - group: blob
