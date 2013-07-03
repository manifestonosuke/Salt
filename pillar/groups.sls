{% if grains['os_family'] == 'RedHat' %}
sudo: wheel
{% elif grains['os_family'] == 'Debian' %}
sudo: sudo
{% endif %}

