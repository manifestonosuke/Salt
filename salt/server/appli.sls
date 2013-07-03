apache:
  pkg.installed:
    - name: {{ pillar['pkgdef']['apache'] }}

git:
  pkg.installed:
    - name: git
