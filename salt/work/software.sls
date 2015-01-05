desktop:
  pkg.installed:
    - pkgs:
      - calibre
      - keepassx
      - {{ pillar ['firefox'] }}
      - {{ pillar ['chromium'] }}
      - {{ pillar ['rekonq'] }}
      
