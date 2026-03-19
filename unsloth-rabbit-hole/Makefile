all:
	cat -n Makefile

unsloth:
	git clone --filter=blob:none https://github.com/unslothai/unsloth

unsloth/.venv: unsloth
	cd unsloth && uv venv --python 3.13

setup: unsloth/.venv
	cd unsloth && source .venv/bin/activate && uv pip install . --torch-backend=auto && unsloth studio setup

studio:
	cd unsloth && source .venv/bin/activate &&  unsloth studio -H 0.0.0.0 -p 8000

clean:
	rm -rf unsloth

