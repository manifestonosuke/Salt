# Presentation 
This is a salt configuration to mainly configure linux workstation.
A choice of profile based on "type" grain like (work or home in this tree) 
'''python
grains:
  type: work
'''

A partition for extra filesystem for data (default /data) is needed in pillar/setting.sls.
In this file change 
data: data => to your partition (like home or what ever)
datadev: /dev/sda4 => to your partitionfor thie extra fs

To use the salt tree, choose a base dir for installing the salt tree.
Copy Salt dir to this dir (like /opt) and cp etc/minion.opt.conf as minion (you may change the path by changing path in this file)
Then run :
salt-call --local -c /opt/Salt/etc/   state.show_highstate to verify (no execution just show).
Of course salt-minion needs to be installed.
To run :
salt-call --local -c /opt/Salt/etc/   state.highstate

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
