
build: components bootstrap-grid.css
	@component build --dev

bootstrap-grid.css: bootstrap-grid.less
	node_modules/.bin/recess bootstrap-grid.less --compile > bootstrap-grid.css

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
