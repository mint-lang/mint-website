deploy:
	mint build
	git checkout deploy
	mv dist/* ./
	rm -rf dist
	git add .
	git commit -m "Deploy `date "+%Y-%m-%d %H:%M:%S"`"
	git push origin HEAD
	git checkout master
