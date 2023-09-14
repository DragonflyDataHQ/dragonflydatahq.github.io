clean:
	rm -rf ./doc

build:
	mkdir -p "doc"
	cp -r ./src/assets doc/assets
	cp -r ./src/root-files/* doc/
	npx hbs -D ./src/data/integrations.json -o ./doc ./src/pages/integrations.hbs
	cp ./src/pages/privacy.html ./doc/privacy.html
	cp ./src/pages/contact.html ./doc/contact.html
	cp ./src/pages/terms.html ./doc/terms.html
	cp ./src/pages/features.html ./doc/features.html
	cp ./src/pages/support.html ./doc/support.html
	cp ./src/pages/contact-thankyou.html ./doc/contact-thankyou.html
	cp ./src/pages/index.html ./doc/index.html
	cp ./src/pages/404.html ./doc/404.html


dev:
	npm run watch