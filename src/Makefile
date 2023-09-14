clean:
	rm -rf ./doc

build:
	mkdir "doc"
	cp -r ./src/assets doc/assets
	cp -r ./src/root-files doc/
	./node_modules/.bin/hbs -D ./src/data/integrations.json -D ./src/integrations.hbs -o ./doc