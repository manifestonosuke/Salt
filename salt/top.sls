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
  'os:Ubuntu':
    - match: grain
    - ubuntu
    - order: 2


