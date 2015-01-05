base: 
  'os:Fedora':
    - match: grain
    - fedora
  'type:work' :
    - match: grain
    - common
    - work
  'type:home' :
    - match: grain
    - common
    - home
