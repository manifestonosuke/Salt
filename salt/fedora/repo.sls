
{% set  fv = grains.get('osrelease') %}

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
    - enabled: 0

chromiumrepo:
  pkgrepo.managed:
    - name : churchyard-chromium-russianfedora-tested
    - humanname : "Copr repo for chromium-russianfedora-tested owned by churchyard"
    - baseurl: http://copr-be.cloud.fedoraproject.org/results/churchyard/chromium-russianfedora-tested/fedora-$releasever-$basearch/
    - skip_if_unavailable: True
    - gpgcheck: 0
    - enabled: 1
