.PHONY: docs

gitrcommit:
	git config --global credential.helper store
	# git add -u
	git add Makefile README.md
	-git add bin/*
	-git add -f data/*/*
	-git add docs/*
	-git add *
	-git commit -a -m "`date`"
	git pull
	git push origin HEAD
gitrupdate:
	git config --global credential.helper store
	git pull
