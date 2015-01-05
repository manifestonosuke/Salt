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
