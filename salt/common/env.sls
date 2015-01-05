
/root/.bashrc:
  file.append:
    - source : salt://common/bashrc

{% if grains['os_family'] == 'Suse' -%}
  adm:
    group.present:
      - gid: 4
      - system: True
{% endif %}
