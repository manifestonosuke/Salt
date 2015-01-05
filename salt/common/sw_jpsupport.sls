{% if grains['os_family'] == 'RedHat' -%}
jpfontsrh:
  pkg.installed:
    - pkgs :
      - sazanami-fonts-common
      - mona-sazanami-fonts
      - sazanami-gothic-fonts
      - sazanami-mincho-fonts
jpsoft:
  pkg.installed:
    - pkgs :
      - ibus 
      - ibus-mozc
{% elif grains['os'] == 'openSUSE' -%}
sazanami-fonts:
  pkg.installed
jpsoft:
  pkg.installed:
    - pkgs :
      - ibus 
      - ibus-mozc
{% else %}
jpfontsother:
  pkg.installed:
    - pkgs :
      - sazanami-fonts-common
      - mona-sazanami-fonts
      - sazanami-gothic-fonts
      - sazanami-mincho-fonts
jpsoft:
  pkg.installed:
    - pkgs :
      - ibus 
      - ibus-mozc
{% endif %}

/{{ pillar ['data'] }}/env.d/scim.sh:
  file.managed:
    - source: salt://home/scim.sh
