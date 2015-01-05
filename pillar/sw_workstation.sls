browser:
  {% if grains['os'] == 'Fedora' %}
    rekonq: rekonq
    chromium: google-chrome-stable
    firefox: firefox
  {% elif grains['os_family'] == 'RedHat' -%}
    firefox: firefox
    chromium: chromium-browser
  {% elif grains['os'] == 'Ubuntu' -%}
    firefox: firefox
    chromium:chromium-browser
  {% elif grains['os_family'] == 'openSUSE' -%}
    firefox: MozillaFirefox
    chromium: chromium
  {% elif grains['os_family'] == 'Debian' -%}
    firefox: iceweasel
  {% else %}
    firefox: firefox
    chromium: chromium-browser
  {% endif %}

desktop:
  {% if grains['os_family'] == 'Redhat' %}
    qtcurve: qtcurve-gtk2
  {% elif grains['os_family'] == 'Debian' -%}
    qtcurve: gtk2-engines-qtcurve
  {% endif %}

