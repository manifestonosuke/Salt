{% set svc = ["bluetooth","NetworkManager"] %}


{% for s in svc %}
enable {{ s }} :
  service.running:
    - enable: true
    - name: {{ s }}
{% endfor %}

/usr/share/applications/chromium-browser-chromium.desktop: 
  file.link: 
    - source: /usr/share/applications/chromium.desktop 

