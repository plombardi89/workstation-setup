# workstation-setup

Bootstraps a Fedora 25 workstation (specifically mine). I'll take PR's to make this more generic if folks are interested.

## Prerequisites

1. `sudo -s dnf install git`
2. `git clone https://github.com/plombardi89/workstation-setup.git`
3. `cd workstation-setup`

## Go!

4. `./bootstrap.bash`
5. `. ~/venv/py2/bin/activate.fish`
6. `ansible-playbook playbook.yaml`

## License

[Apache 2.0](LICENSE)
