include:
  - components.hare.prepare
  - components.hare.install
  - components.hare.config
  - components.hare.sanity_check

Generate hare checkpoint flag:
  file.managed:
    - name: /opt/seagate/eos-prvsnr/generated_configs/{{ grains['id'] }}.hare
    - makedirs: True
    - create: True