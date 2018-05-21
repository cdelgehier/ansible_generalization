[![Build Status](https://travis-ci.org/open-io/ansible-role-openio-meta0.svg?branch=master)](https://travis-ci.org/open-io/ansible-role-openio-meta0)
# Ansible role `meta0`

An Ansible role for OpenIO meta0. Specifically, the responsibilities of this role are to:

- Install
- Configure 

## Requirements

- Ansible 2.4+

## Role Variables


| Variable   | Default | Comments (type)  |
| :---       | :---    | :---             |
| `openio_meta0_bind_address` | `"{{ ansible_default_ipv4.address }}"` | IP address to bind |
| `openio_meta0_bind_port` | `6001` | Port to listen |
| `openio_meta0_location` | `"{{ ansible_hostname }}"` | Minimal distance to distributed a content/meta/rdir |
| `openio_meta0_namespace` | `"OPENIO"` | Namespace |
| `openio_meta0_options` | `[]` | Options |
| `openio_meta0_serviceid` | `"0"` | ID in gridinit |
| `openio_meta0_volume` | `"/var/lib/oio/sds/{{ openio_meta0_namespace }}/meta0-{{ openio_meta0_serviceid }}"` | Volume to store metadata |

## Dependencies

No dependencies.

## Example Playbook

```yaml
- hosts: all
  gather_facts: true
  become: true
  roles:
    - role: meta0
```


```ini
[all]
node1 ansible_host=192.168.1.173
```

## Contributing

Issues, feature requests, ideas are appreciated and can be posted in the Issues section.

Pull requests are also very welcome.
The best way to submit a PR is by first creating a fork of this Github project, then creating a topic branch for the suggested change and pushing that branch to your own fork.
Github can then easily create a PR based on that branch.

## License

Apache License, Version 2.0

## Contributors

- [Cedric DELGEHIER](https://github.com/cdelgehier) (maintainer)
