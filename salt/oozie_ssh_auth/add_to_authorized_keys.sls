{% set cluster = salt['pnda.cluster_name']() %}
{% set os_user = pillar['os_user'] %}
{% set oozie_minion_hostname = salt['mine.get']('G@pnda_cluster:{} and G@roles:oozie_database'.format(cluster),
                                'network.ip_addrs',
                                expr_form='compound').keys()|first %}

deployment-manager-install_pub_key:
  file.managed:
    - name: /tmp/oozie_ssh_key
    - source: salt://{{ oozie_minion_hostname }}/keys/id_rsa.pub

deployment-manager-install_key:
  cmd.run:
    - name: "cat /tmp/oozie_ssh_key >> $(getent passwd {{ os_user }} | cut -d: -f6)/.ssh/authorized_keys"
