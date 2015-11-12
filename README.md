# Presentation 
This is a salt configuration to mainly configure linux workstation.
A choice of profile based on type grain like 
'''python
grains:
  type: work
'''
Should be run locally after fresh install of minion 
Change as this to run local :
file_client: local
Change file_root and pillar_root with your mount point.
The main configuration file is in etc/minion.conf where you set type grains and salt/pillar root dir.
Then copy the file on /etc/salt/minion.d and run to check  
`salt-call  state.show_highstate`
or to execute 
`salt-call  state.highstate`

# Supported distro 
This salt stack aim to support :
* Fedora
* Ubuntu
* Debian
* Arch 

Plan to integrate OpenSuse but not very fan of this distro ...


# Changes summary
2015/11/12 : Change minion.conf to easily integrate to salt default dir.
2015/11/11 : Start map.jinja to map distro specifics
2015/10/29 : Large review of the code 
  - Add etc/minion to execute with salt-call -c 
  - Large review of the code 
  - Need to review pillar and OS base definition
2014/01/05 : choose this arch for now
pillar will have 3 files type : 
  - setting.sls which is used to set manually data filesystem option (device/fs)
  - files to define alias for packages that changes between distro like firefox/apache ... 
  - general settings like groups or filename that change between distro
2014/01/03 : reviewing global arch in pure dev stage
