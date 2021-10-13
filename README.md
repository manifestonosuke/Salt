#Presentation 
This is a salt configuration to mainly configure linux workstation.

Some specifics are set with a profile like work or home
'''python
grains:
  type: work
'''

A partition for extra filesystem for data (default /data) is needed in pillar/setting.sls.
In this file change 
data: data => Mount point of the file system from / (ie : data or home)
datadev: /dev/sda4 => Which partition is used (/dev/xxx or LABEL=data)

To use the salt tree,  copy Salt dir to /opt or another directory and create the file in Salt/etc/minion.conf.
There are 2 models for /opt or /data, checkout content of this file.
For opt you need to change file_roots and pillar_roots in the minion.conf then you can run highstate.
salt-call --local -c /opt/Salt/etc/   state.show_highstate to verify.
Of course salt-minion needs to be installed.
To run the full cource run 
'''
  salt-call  state.highstate
'''

# Supported distro 
This salt stack aim to support :
* Fedora
* Ubuntu
* Debian
* Arch 

Plan to integrate OpenSuse but not very fan of this distro ...


# Changes summary
- 2016/04/29 : Revamp pillar, add ubuntu packages. Need to fix KDE to plasma stuff
- 2015/11/12 : minion file should be called minion .. Add some softwarefor ubuntu.
- 2015/11/12 : Change minion.conf to easily integrate to salt default dir.
- 2015/11/11 : Start map.jinja to map distro specifics
- 2015/10/29 : Large review of the code 
  - Add etc/minion to execute with salt-call -c 
  - Large review of the code 
  - Need to review pillar and OS base definition
- 2014/01/05 : choose this arch for now
- pillar will have 3 files type : 
  - setting.sls which is used to set manually data filesystem option (device/fs)
  - files to define alias for packages that changes between distro like firefox/apache ... 
  - general settings like groups or filename that change between distro
- 2014/01/03 : reviewing global arch in pure dev stage
