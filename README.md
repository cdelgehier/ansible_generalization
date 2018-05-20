
Le main include des playbook par servicetype ce qui permet de toujours lancé la meme commande mais en pouvant spécifié ou exclude des etapes

Les Le deploiement est typé dans group_vars

Les codes ne doit pas levé d'erreur au `yamllint`et au `ansible-lint`

Installer les roles:
```
ansible-galaxy install -p roles -r requirements.yml
```
Lancer la full install:
```
ansible-playbook -i inventory_centos.ini main.yml
```
Lancez une partie spécifique :
```
ansible-playbook -i inventory_centos.ini main.yml -t keystone
```
Reprendre la suite d'un deploiement:
```
ansible-playbook -i inventory_centos.ini main.yml --skip-tags=keystone,checks,requirements,gridinit
```
Liste des tags dispo
```
ansible-playbook -i inventory_centos.ini  main.yml --list-tags
# plus clair
grep tag main.yml
```
