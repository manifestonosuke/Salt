local:
  group.present:
    - gid: 10000

include:
  - server.users

include:
  - server.appli
