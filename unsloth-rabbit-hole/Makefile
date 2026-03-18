all:
	cat -n Makefile

unsloth:
	git clone --filter=blob:none https://github.com/unslothai/unsloth

unsloth/.venv: unsloth
	cd unsloth && uv venv

# TODO: This is not working on my MacOS yet due to python toolchain, will come back alter. 
setup: unsloth/.venv
	cd unsloth && source .venv/bin/activate && uv pip install . --torch-backend=auto && unsloth studio setup

clean:
	rm -rf unsloth

