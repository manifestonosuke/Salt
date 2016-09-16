{% from "kde.jinja" import kde with context %}

kde:
  pkg:
    - installed
    - pkgs:
      - kate
      - {{ kde.kget }}
{% if grains['os'] == 'Arch' %}
      - kdegraphics-okular
{% else %} 
      - okular
{% endif %}
      - {{ kde.konsole }}
      - {{ kde.kdegtkconfig }}
      - {{ kde.gtk3breeze }}
      - {{ kde.qtcurve }}

{% if grains['os_family'] == 'Ubuntu' %}
/usr/share/applications/konsole.desktop:
  file.symlink:
    - target: /usr/share/applications/org.kde.konsole.desktop
/usr/share/applications/dolphin.desktop:
  file.symlink:
    - target: /usr/share/applications/dolphin.desktop
{% endif %}
