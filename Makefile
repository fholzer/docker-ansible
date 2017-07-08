
help:
	@echo "Run \`make build\` to build the ansible docker image."
	@echo "Run \`make install\` to install create the symlinks necessary to use it."

build:
	docker build -t ansible .

install:
	for i in ansible ansible-connection ansible-console ansible-doc ansible-galaxy ansible-playbook ansible-pull ansible-vault; do \
		ln -s $(PWD)/run.sh ~/bin/$$i; \
	done
