{% from "common/map.jinja" import map with context %}

kde:
  pkg:
    - installed
    - pkgs:
      - kate
      - {{ map.kget }}
{% if grains['os'] == 'Arch' %}
      - kdegraphics-okular
{% else %} 
      - okular
{% endif %}
      - konsole
      - {{ map.kdegtkconfig }}
      - {{ map.gtk3breeze }}

{% if grains['os_family'] == 'Ubuntu' %}
/usr/share/applications/konsole.desktop:
  file.symlink:
    - target: /usr/share/applications/org.kde.konsole.desktop
/usr/share/applications/dolphin.desktop:
  file.symlink:
    - target: /usr/share/applications/dolphin.desktop
{% endif %}

