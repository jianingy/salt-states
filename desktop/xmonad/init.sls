xmonad:
  pkg.installed

/usr/share/gnome-session/sessions/xmonad-gnome.session:
  file:
    - managed
    - source: salt://desktop/xmonad/xmonad-gnome.session
    - mode: 644
    - require:
        - pkg: xmonad

/usr/share/xsessions/xmonad-gnome-session.desktop:
  file:
    - managed
    - source: salt://desktop/xmonad/xmonad-gnome-session.desktop
    - mode: 644
    - require:
        - pkg: xmonad


/usr/share/applications/xmonad.desktop:
  file:
    - managed
    - source: salt://desktop/xmonad/xmonad.desktop
    - mode: 644
    - require:
        - pkg: xmonad

/usr/bin/xmonad-gnome-session:
    file:
    - managed
    - source: salt://desktop/xmonad/xmonad-gnome-session
    - mode: 644
    - require:
        - pkg: xmonad
