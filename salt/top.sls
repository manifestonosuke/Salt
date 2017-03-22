base: 
  'type:work' :
    - match: grain
    - common
    - work
  'type:home' :
    - match: grain
    - common
    - home
  'os:Fedora':
    - match: grain
    - fedora
    - order: 2
  'os:Debian':
    - match: grain
    - debian
    - order: 2
  'os:Ubuntu':
    - match: grain
    - ubuntu
    - order: 2
  'os:Arch':
    - match: grain
    - arch
    - order: 2
  'os:SUSE':
    - match: grain
    - suse
    - order: 2


