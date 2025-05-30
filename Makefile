clean:
	rm -rf ./docs

build:
	node -v
	mkdir -p docs
	cp -r ./src/assets docs/
	cp -r ./src/root-files/* docs/
	npx hbs -D ./src/data/integrations.json -o ./docs ./src/pages/integrations.hbs
	cp ./src/pages/privacy.html ./docs/privacy.html
	cp ./src/pages/contact.html ./docs/contact.html
	cp ./src/pages/terms.html ./docs/terms.html
	cp ./src/pages/features.html ./docs/features.html
	cp ./src/pages/support.html ./docs/support.html
	cp ./src/pages/contact-thankyou.html ./docs/contact-thankyou.html
	cp ./src/pages/index.html ./docs/index.html
	cp ./src/pages/404.html ./docs/404.html
	cp ./src/pages/tool-dq-maturity.html ./docs/tool-dq-maturity.html
	cp CNAME ./docs/CNAME


dev:
	npm run watch