seafile:
  pkg.installed:
    - pkgs:
      - libjansson4
      - python-simplejson
{% if grains['cpuarch'] == 'x86_64' %}
      - seafile: http://seafile.googlecode.com/files/seafile_2.0.8_amd64.deb
{% else %}
      - seafile: http://seafile.googlecode.com/files/seafile_2.0.8_i386.deb
{% endif %}

