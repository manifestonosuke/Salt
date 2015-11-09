# Presentation 
This is a salt configuration to mainly configure linux workstation.
A choice of profile based on type grain like 
grains:
  type: work
Should be run locally after fresh install of minion 
Change as this to run local :
file_client: local
Change file_root and pillar_root with your mount point.
This changes are now doable in etc/minion and salt run as :
`salt-call  -c /mnt/Salt/etc/ state.highstate`


2014/01/03 : reviewing global arch in pure dev stage
2014/01/05 : choose this arch for now
pillar will have 3 files type : 
  - setting.sls which is used to set manually data filesystem option (device/fs)
  - files to define alias for packages that changes between distro like firefox/apache ... 
  - general settings like groups or filename that change between distro
2015/10/29 : Large review of the code 
  - Add etc/minion to execute with salt-call -c 
  - Large review of the code 
  - Need to review pillar and OS base definition
