MICRO_VERSION = local
MICRO_SEMVER ?= 2.0.15-dev.local
MICRO_SITE_METHOD = local
MICRO_SITE = $(TOPDIR)/../micro
MICRO_DEPENDENCIES  = host-go
MICRO_LICENSE = MIT
MICRO_LICENSE_FILES = LICENSE

define MICRO_BUILD_CMDS
	( cd $(@D) ; \
	  GOWORK= \
	  GOOS=linux GOARCH=386 CGO_ENABLED=0 \
	  $(HOST_DIR)/bin/go build -trimpath -ldflags "-s -w -X github.com/zyedidia/micro/v2/internal/util.Version=$(MICRO_SEMVER)" -o micro ./cmd/micro )
endef

define MICRO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/micro $(TARGET_DIR)/usr/bin/micro
endef

$(eval $(generic-package))
