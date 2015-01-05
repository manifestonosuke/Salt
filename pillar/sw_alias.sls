kde:
  {% if grains['os_family'] == 'Redhat' %}
    qtcurve: qtcurve-gtk2
  {% elif grains['os_family'] == 'Debian' -%}
    qtcurve: gtk2-engines-qtcurve
  {% endif %}

browser:
{% if grains['os'] == 'Fedora' %}
  rekonq: rekonq
  chromium: google-chrome-stable
  firefox: firefox
{% elif grains['os_family'] == 'RedHat' -%}
  firefox: firefox
  chromium: chromium-browser
  rekonq: rekonq
{% elif grains['os'] == 'Ubuntu' -%}
  firefox: firefox
  chromium:chromium-browser
  rekonq: rekonq
{% elif grains['os'] == 'openSUSE' -%}
  firefox: MozillaFirefox
chromium: chromium
rekonq: rekonq
{% elif grains['os_family'] == 'Debian' -%}
  firefox: iceweasel
  chromium: chromium
  rekonq: rekonq
{% else %}
  firefox: firefox
  chromium: chromium-browser
  rekonq: rekonq
{% endif %}


application:
  {% if grains['os_family'] == 'RedHat' %}
  vim: vim-enhanced
  {% elif grains['os_family'] == 'Debian' %}
  vim: vim
  {% else %}
  vim: vim
  {% endif %}

server:
  {% if grains['os_family'] == 'RedHat' %}
  apache: httpd
  {% elif grains['os_family'] == 'Debian' %}
  apache: apache2
  {% else %}
  apache: apache
  {% endif %}
