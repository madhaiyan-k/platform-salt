{% set oozie_dir = salt['cmd.run']('getent passwd oozie | cut -d: -f6') %}

gen_ssh_key:
  cmd.run:
    - name: (echo "" | sudo -u oozie ssh-keygen)
    - unless: test -f {{ oozie_dir }}/.ssh/id_rsa.pub

push_key:
  module.run:
    - name: cp.push
    - path: '{{ oozie_dir }}/.ssh/id_rsa.pub'
    - upload_path: '/keys/id_rsa.pub'
