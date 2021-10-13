
{% set  fv = grains.get('osrelease') %}

unity-webapps-common:
  pkg.removed

ubuntu-pkg:
  pkg.installed:
    - pkgs:
      - aptitude
      - unity-tweak-tool
