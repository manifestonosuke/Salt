pkgdef:
  {% if grains['os_family'] == 'RedHat' %}
  apache: httpd
  {% elif grains['os_family'] == 'Debian' %}
  apache: apache2
  {% endif %}

pkgaliases:
  {% if grains['os_family'] == 'RedHat' %}
  apache: httpd
  vim: vim-enhanced
  {% elif grains['os_family'] == 'Debian' %}
  apache: apache2
  vim: vim
  {% else %}
  apache: apache
  vim: vim
  {% endif %}
