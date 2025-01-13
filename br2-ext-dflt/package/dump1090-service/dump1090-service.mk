################################################################################
#
# dump1090-service
#
################################################################################

DUMP1090_SERVICE_VERSION = 1.0.0
DUMP1090_SERVICE_SITE = $(DUMP1090_SERVICE_PKGDIR)
DUMP1090_SERVICE_SITE_METHOD = local

define DUMP1090_SERVICE_INSTALL_INIT_SYSV
	$(INSTALL) -m 755 -D $(DUMP1090_SERVICE_PKGDIR)/S60dump1090 $(TARGET_DIR)/etc/init.d/S60dump1090
endef

$(eval $(generic-package))
