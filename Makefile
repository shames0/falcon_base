mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))

app_name=my_app
img_name=${app_name}_img

build:
	docker build\
		--build-arg AppName=${app_name}\
		-t ${img_name} .

run: build
	docker run --rm\
		-v ${current_dir}/${app_name}:/usr/src/app/${app_name} \
		-p 8000:8000\
		${img_name}\
		gunicorn --reload -b :8000 ${app_name}.app

.PHONY:\
	build\
	run\

