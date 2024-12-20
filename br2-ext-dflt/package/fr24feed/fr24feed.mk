################################################################################
#
# fr24feed
#
################################################################################

FR24FEED_VERSION = 1.0.48-0
FR24FEED_SOURCE = fr24feed_$(FR24FEED_VERSION)_armhf.tgz
FR24FEED_SITE = https://repo-feed.flightradar24.com/rpi_binaries

define FR24FEED_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/fr24feed $(TARGET_DIR)/usr/bin/fr24feed
	$(INSTALL) -m 755 -D $(FR24FEED_PKGDIR)/fr24feed.ini $(TARGET_DIR)/etc/fr24feed.ini
endef

define FR24FEED_INSTALL_INIT_SYSV
	$(INSTALL) -m 755 -D $(FR24FEED_PKGDIR)/S71fr24feed $(TARGET_DIR)/etc/init.d/S71fr24feed
endef

$(eval $(generic-package))
