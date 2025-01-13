################################################################################
#
# restart
#
################################################################################

RESTART_VERSION = 1.0.0
RESTART_SITE = $(RESTART_PKGDIR)
RESTART_SITE_METHOD = local

define RESTART_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(RESTART_PKGDIR)/restart.sh $(TARGET_DIR)/usr/bin/restart.sh
endef

$(eval $(generic-package))
