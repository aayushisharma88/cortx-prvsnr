Set consul in bash_profile:
  file.blockreplace:
    - name: ~/.bashrc
    - marker_start: '# DO NOT EDIT: Consul binaries'
    - marker_end: '# DO NOT EDIT: End'
    - content: 'export PATH=/opt/consul:$PATH'
    - append_if_not_found: True
    - append_newline: True
    - backup: False

Source bash_profile for nodejs addition:
  cmd.run:
    - name: source ~/.bashrc