virtualization:
  pkg.installed:
    - pkgs:
      - qemu-system
      - qemu-kvm
      - libvirt-bin
      - virtinst
      - virt-manager
      - spice-client
      - python-spice-client-gtk

/etc/modprobe.d/kvm.conf:
  file.managed:
    - user: root
    - group: root
    - mode : 644
    - contents: |
        options kvm_intel nested=1

