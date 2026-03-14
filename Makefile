clean:
	rm -rf ./docs

build:
	node -v
	mkdir -p docs
	mkdir -p docs/assets/img
	cp -r ./src/assets/img/integrations docs/assets/img/
	cp -r ./src/assets/img/favicon.png docs/assets/img/
	cp -r ./src/assets/img/favicon.ico docs/assets/img/
	cp -r ./src/assets/img/logo-light.png docs/assets/img/
	cp -r ./src/assets/img/logo-full.png docs/assets/img/
	cp -r ./src/assets/img/logo.png docs/assets/img/
	cp -r ./src/assets/files docs/assets/ 2>/dev/null || true
	cp -r ./src/root-files/* docs/
	cp ./src/pages/index.html ./docs/index.html
	cp ./src/pages/privacy.html ./docs/privacy.html
	cp ./src/pages/terms.html ./docs/terms.html
	cp ./src/pages/support.html ./docs/support.html
	cp ./src/pages/contact-thankyou.html ./docs/contact-thankyou.html
	cp ./src/pages/404.html ./docs/404.html
	cp ./src/pages/tool-dq-maturity.html ./docs/tool-dq-maturity.html
	cp CNAME ./docs/CNAME

dev:
	npm run watch
