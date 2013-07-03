pkgdefws:
  {% if grains['os'] == 'Fedora' %}
  rekonq:rekonq
  chromium: chromium-browser
  firefox: firefox
  vim: vim-enhanced
  {% elif grains['os_family'] == 'RedHat' %}
  firefox: firefox
  chromium: chromium-browser
  vim: vim-enhanced
  {% elif grains['os'] == 'Ubuntu' %}
  firefox: firefox
  chromium:chromium-browser
  vim: vim
  {% elif grains['os_family'] == 'Debian' %}
  firefox: iceweasel
  vim: vim
  {% else %}
  firefox: firefox
  chromium: chromium-browser
  {% endif %}

