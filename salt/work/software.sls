{% set codename = salt['grains.get']('oscodename') %}

hipchat_repo:
  pkgrepo.managed: 
    - name: deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client {{ codename }} main
    - file: /etc/apt/sources.list.d/hipchat.list
    - key_url: https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public

hipchat4:
  pkg.installed
