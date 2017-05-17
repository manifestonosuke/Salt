
jpsoft:
  pkg.installed:
    - pkgs :
      - ibus 
      - ibus-anthy
      - ibus-qt

/{{ pillar ['data'] }}/local/env.d/scim.sh:
  file.managed:
    - source: salt://home/scim.sh

ja_JP.UTF-8:
  locale.present
    


{% if grains['os_family'] == 'RedHat' -%}
jpfonts:
  pkg.installed:
    - pkgs :
      - sazanami-fonts-common
      - mona-sazanami-fonts
      - sazanami-gothic-fonts
      - sazanami-mincho-fonts
{% elif grains['os'] == 'openSUSE' -%}
jpfonts:
  pkg.installed:
    - pkgs :
      - sazanami-fonts
{% elif grains['os_family'] == 'Debian' -%}
jpfonts:
  pkg.installed:
    - pkgs :
      - fonts-sawarabi-mincho
      - fonts-seto
      - fonts-takao
      - fonts-takao-gothic
      - fonts-takao-mincho


{% elif grains['os'] == 'Arch' -%}
jpfonts:
  pkg.installed:
    - pkgs :
      - ttf-sazanami 
      - otf-ipafont
{% else %}
jpfonts:
  pkg.installed:
    - pkgs :
      - sazanami-fonts-common
      - mona-sazanami-fonts
      - sazanami-gothic-fonts
      - sazanami-mincho-fonts
{% endif %}

