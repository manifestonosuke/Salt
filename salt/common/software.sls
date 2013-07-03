browser:
  pkg.installed:
    - name: {{ pillar['pkgdefws']['firefox'] }}
    - name: {{ pillar['pkgdefws']['chromium'] }}

apps:
  {% for package in 'skrooge','keepassx','vlc' %}
  pkg.installed:
    - name: {{ package }}
  {% endfor %}

sys:
  {% for package in {{ pillar['test:soft'] }} %}
  pkg.installed:
    - name: {{ package }}
  {% endfor %}
	
