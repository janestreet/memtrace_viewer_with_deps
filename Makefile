INSTALL_ARGS := $(if $(PREFIX),--prefix $(PREFIX),)

default:
	dune build --profile release @memtrace_viewer/install

install:
	dune install $(INSTALL_ARGS) memtrace_viewer

uninstall:
	dune uninstall $(INSTALL_ARGS) memtrace_viewer

reinstall: uninstall install

clean:
	dune clean

.PHONY: default install uninstall reinstall clean
