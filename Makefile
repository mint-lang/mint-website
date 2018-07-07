deploy:
	git checkout deploy
	git pull
	git checkout master
	mint build
	git checkout deploy
	cp -rlf dist/* ./
	rm -rf dist
	git add .
	git commit -m "Deploy `date "+%Y-%m-%d %H:%M:%S"`"
	git push origin HEAD
	git checkout master
