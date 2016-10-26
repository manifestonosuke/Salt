
{% set  fv = grains.get('osrelease') %}

mimic-yum:
  cmd.run:
    - name: ln -s /etc/dnf/dnf.conf /etc/yum.conf 
    - unless: test -f /etc/yum.conf 

fusion:
  pkg.installed:
    - sources:
      - rpmfusion-free-release: http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-{{ fv }}.noarch.rpm

virtualboxrepo:
  pkgrepo.managed:
    - humanname: Virtualbox
    - name: Virtualbox
    - baseurl: http://download.virtualbox.org/virtualbox/rpm/fedora/$releasever/$basearch 
    - gpgcheck: 1
    - gpgkey: https://www.virtualbox.org/download/oracle_vbox.asc
    - enabled: 1


