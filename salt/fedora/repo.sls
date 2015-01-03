
{% set  fv = grains.get('osrelease') %}

fusion:
  pkg.installed:
    - sources:
      - rpmfusion: http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-{{ fv }}.noarch.rpm

chromerepo:
  pkgrepo.managed:
    - humanname: Google Chrome
    - name: Google-Chrome
    - baseurl: http://dl.google.com/linux/chrome/rpm/stable/\$basearch
    - gpgcheck: 1
    - gpgkey: https://dl-ssl.google.com/linux/linux_signing_key.pub
    - enabled: 1

virtualboxrepo:
  pkgrepo.managed:
    - humanname: Virtualbox
    - name: Virtualbox
    - baseurl: http://download.virtualbox.org/virtualbox/rpm/fedora/$releasever/$basearch 
    - gpgcheck: 1
    - gpgkey: https://www.virtualbox.org/download/oracle_vbox.asc
    - enabled: 0
