.PHONY: core goodsprings

default: core

core:
	cd core && make

goodsprings: core
	cd goodsprings && make
