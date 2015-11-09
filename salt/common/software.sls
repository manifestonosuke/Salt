#  sys: ['ncftp','rsync','git','sudo']

sys-pkg:
  pkg:
    - installed
    - pkgs:
      - rsync
      - ncftp
      - fsarchiver
      - git
      - sudo

internet_client:
  pkg:
    - installed
    - pkgs:
      - {{ pillar['internet']['firefox'] }}
      - {{ pillar['internet']['thunderbird'] }}


{% if grains['os_family'] == 'Debian' %}
/usr/share/applications/firefox.desktop:
  file.symlink:
    - target: /usr/share/applications/iceweasel.desktop
/usr/share/applications/thunderbird.desktop:
  file.symlink:
    - target: /usr/share/applications/icedove.desktop
{% endif %}
