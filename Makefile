DRUSH_PREFIX=${CURDIR}/debian/openapp-drush-installer
DRUPAL_PREFIX=${CURDIR}/debian/openapp-drupal-installer

install:
# bin
	mkdir -p $(DRUSH_PREFIX)/usr/share
	mkdir -p $(DRUPAL_PREFIX)/etc/openapp-drupal
	tar zxf drush-7.x-4.4.tar.gz -C $(DRUSH_PREFIX)/usr/share
	mkdir -p $(DRUSH_PREFIX)/usr/bin
	ln -sf /usr/share/drush/drush $(DRUSH_PREFIX)/usr/bin/drush

uninstall:
# bin
	rm -rf $(DRUSH_PREFIX)/usr/bin/drush
	rm -rf $(DRUSH_PREFIX)/usr/share/drush
	rm -rf $(DRUPAL_PREFIX)/etc/openapp-drupal

clean:
	-echo "NOP"

