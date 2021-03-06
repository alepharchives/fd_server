

all:
	(cd config;$(MAKE))
	(cd src;$(MAKE))
	-(cd c_src;$(MAKE) -k)

clean:
	(cd src;$(MAKE) clean)
	(cd c_src;$(MAKE) clean)

release: clean appfile
	sh ../../support/create_release.sh

appfile:
	(cd src && $(MAKE) ../ebin/fd_server.app)

docs:
	(cd src && $(MAKE) docs)
