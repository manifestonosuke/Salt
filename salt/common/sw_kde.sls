{% from "map.jinja" import map with context %}

kde:
  pkg:
    - installed
    - pkgs:
      - kate
      - kget
      - okular
      - konsole
      - {{ map.kdegtkconfig }}

{% if grains['os_family'] == 'Ubuntu' %}
/usr/share/applications/konsole.desktop:
  file.symlink:
    - target: /usr/share/applications/org.kde.konsole.desktop
/usr/share/applications/dolphin.desktop:
  file.symlink:
    - target: /usr/share/applications/dolphin.desktop
{% endif %}

