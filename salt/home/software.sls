browser:
  pkg.installed:
    - name: {{ pillar['pkgdefws']['firefox'] }}
    - name: {{ pillar['pkgdefws']['chromium'] }}
    - name: {{ pillar['pkgdefws']['rekonq'] }}

apps:
  {% for package in 'skrooge','keepassx','vlc' %}
  pkg.installed:
    - name: {{ package }}
  {% endfor %}

sys:
  git: pkg.installed

	
