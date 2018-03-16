deploy:
	git checkout deploy
	mint build
	mv dist/* ./
	git add .
	git commit -m "Deploy `date "+%Y-%m-%d %H:%M:%S"`"
