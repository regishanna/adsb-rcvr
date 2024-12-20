################################################################################
#
# adsbhub
#
################################################################################

ADSBHUB_VERSION = d87161b2000cc36ba81a19923d898cb627fe90c9
ADSBHUB_SITE = git@github.com:regishanna/adsbhub.git
ADSBHUB_SITE_METHOD = git

define ADSBHUB_INSTALL_INIT_SYSV
	$(INSTALL) -m 755 -D $(ADSBHUB_PKGDIR)/S70adsbhub $(TARGET_DIR)/etc/init.d/S70adsbhub
endef

$(eval $(cargo-package))
