# OpenFest Infra -- Ansible Playbooks

## General Variables

### Global/Group

| Name            | Description                                     |
|-----------------|-------------------------------------------------|
| global_ssh_keys | Keys of people authorized to access _all_ hosts |

### Host

| Name               | Description                                                   |
|--------------------|---------------------------------------------------------------|
| ssh_keys['root']   | Users authorized to run commands as root                      |
| ssh_keys[username] | Authorized keys for a specific user                           |
| ssh_keys['*']      | Authorized keys for all non-root users provisioned by ansible |

## Secret and not-so-secret Variables (grouped by service)

### Keycloak

| Name                      | Description                                                          |
|---------------------------|----------------------------------------------------------------------|
| keycloak_hostname         | Passed as the [Public URL](https://www.keycloak.org/server/hostname) |
| keycloak_db_password      | PostgreSQL DB Password                                               |
| keycloak_db_ansible_host  | PostgreSQL DB Host (in inventory), for provisioning the database     |
| keycloak_podman_user_name | Owner of the keycloak container                                      |
| keycloak_podman_user_home | `{{ keycloak_podman_user_name }}`'s home directory                   |
| keycloak_data_dir         | Used for the volumes / bind mounts                                   |
| keycloak_listen_address   | Where to bind on the host (for using a reverse proxy)                |

