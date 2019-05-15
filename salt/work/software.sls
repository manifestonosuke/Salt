{% set codename = salt['grains.get']('oscodename') %}

download slack:
  cmd.run:
   - name: curl https://downloads.slack-edge.com/linux_releases/slack-desktop-3.4.0-amd64.deb -o /tmp/slack-desktop-3.4.0-amd64.deb
