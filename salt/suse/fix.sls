/usr/share/applications/mozilla-thunderbird.desktop:
  file.symlink:
  - target: /usr/share/applications/thunderbird.desktop
/etc/X11/xorg.conf.d/00-keyboard.conf:
  file.line:
    - match: XkbLayout
    - mode: replace 
    - content: Option "XkbLayout" "fr"
