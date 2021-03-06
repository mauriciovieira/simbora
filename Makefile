lets:
	@echo 'Is ansible in the place?'
	which ansible || brew install ansible

go:
	@echo "Let's go!"
	ansible-playbook start.yaml

get-rich:
	@echo "Let's get rich!"
	ansible-playbook playbooks/criptocurrencies.yaml

install-terminal:
	@echo "Let's install this terminal!"
	ansible-playbook playbooks/terminal.yaml

install-aliases:
	@echo "Just aliases, please."
	ansible-playbook playbooks/aliases.yaml

install-databases:
	@echo "Let's install some databases!"
	ansible-playbook playbooks/databases.yaml

install-desktop:
	@echo "Let's install destkop!"
	ansible-playbook playbooks/desktop.yaml

install-boring-desktop:
	@echo "Let's install boring destkop!"
	ansible-playbook playbooks/boring-desktop.yaml

golang:
	@echo "Golang, yeah! Gophers go!"
	ansible-playbook playbooks/golang.yaml

install-shell:
	@echo "Are you there, oh-my-zsh?"
	ansible-playbook playbooks/shell.yaml

install-asdf:
	@echo "Please, asdf, could you manage my tools?"
	ansible-playbook playbooks/asdf.yaml

update:
	@echo "Synchronizing with github"
	git checkout master
	git pull --rebase

clean:
	@echo "Let's clean up"
	git clean -df

now: update go
