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
