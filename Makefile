DRUPAL_PREFIX=${CURDIR}/debian/openapp-drupal-installer

install:
# bin
	mkdir -p $(DRUPAL_PREFIX)/etc/openapp-drupal
	cp apache2.conf $(DRUPAL_PREFIX)/etc/openapp-drupal/

uninstall:
# bin
	rm -rf $(DRUPAL_PREFIX)/etc/openapp-drupal

clean:
	-echo "NOP"

 

