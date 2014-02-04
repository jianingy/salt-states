/etc/udev/rules.d/90-arduino.rules:
  file:
    - managed
    - content: |
               SUBSYSTEMS=="usb", ATTRS{idProduct}=="0043", ATTRS{idVendor}=="2341", SYMLINK+="arduino arduino_uno_$attr{serial}", MODE="0660"
    - append_if_not_found: True