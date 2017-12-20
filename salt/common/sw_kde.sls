{% from "kde.jinja" import kw with context %}

kde:
  pkg:
    - installed
    - pkgs:
      - kate
      - {{ kw.kget }}
{% if grains['os'] == 'Arch' %}
      - kdegraphics-okular
{% else %} 
      - okular
{% endif %}
      - {{ kw.konsole }}
      - {{ kw.kdegtkconfig }}
      - {{ kw.gtk3breeze }}
      - {{ kw.qtcurve }}

{% if grains['os_family'] == 'Ubuntu' %}
/usr/share/applications/konsole.desktop:
  file.symlink:
    - target: /usr/share/applications/org.kde.konsole.desktop
/usr/share/applications/dolphin.desktop:
  file.symlink:
    - target: /usr/share/applications/dolphin.desktop
{% endif %}

plamsa base:
  pkg.installed:
    - pkgs:
      - breeze

install sddm if not gdm:
  pkg.installed:
      - name: sddm
      - unless: dpkg -l gdm3 

/etc/sddm.conf:
  file.replace:
    - pattern: Current=.*
    - repl: Current=breeze
    - onlyif: dpkg -l sddm

/usr/share/applications/org.qupzilla.QupZilla.desktop:
 file.symlink:
    - target: /usr/share/applications/qupzilla.desktop
    - onlyif: test -f /usr/share/applications/qupzilla.desktop
