DRUSH_PREFIX=${CURDIR}/debian/openapp-drush-installer

install:
# bin
	mkdir -p $(DRUSH_PREFIX)/usr/share
	tar zxf drush-7.x-4.4.tar.gz -C $(DRUSH_PREFIX)/usr/share
	mkdir -p $(DRUSH_PREFIX)/usr/bin
	ln -sf /usr/share/drush/drush $(DRUSH_PREFIX)/usr/bin/drush

uninstall:
# bin
	rm -rf $(DRUSH_PREFIX)/usr/bin/drush
	rm -rf $(DRUSH_PREFIX)/usr/share/drush

clean:
	-echo "NOP"

 

