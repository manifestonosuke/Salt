kde:
  pkg:
    - installed
    - pkgs:
      - kate
      - kget
      - okular
      - konsole
{% if grains['os'] == 'Debian' %}
      - gtk2-engines-oxygen
{% endif %}

{% if grains['os_family'] == 'Ubuntu' %}
/usr/share/applications/konsole.desktop:
  file.symlink:
    - target: /usr/share/applications/org.kde.konsole.desktop
/usr/share/applications/dolphin.desktop:
  file.symlink:
    - target: /usr/share/applications/dolphin.desktop
{% endif %}

