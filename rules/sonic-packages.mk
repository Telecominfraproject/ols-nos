# rules to define remote packages that need to be installed
# during SONiC image build

## Example:
## PACKAGE = my-package
## $(PACKAGE)_REPOSITORY = myrepo/mypackage
## $(PACKAGE)_VERSION = 1.0.0
## SONIC_PACKAGES += $(PACKAGE)

DOCKER_OLS_UCENTRAL_CLIENT = docker-ols-ucentral-client
$(DOCKER_OLS_UCENTRAL_CLIENT)_REPOSITORY = vmytnykplv/ols-ucentral-client
$(DOCKER_OLS_UCENTRAL_CLIENT)_VERSION = 1.0.0
$(DOCKER_OLS_UCENTRAL_CLIENT)_DEFAULT_FEATURE_STATE_ENABLED = y

ifeq ($(INCLUDE_OLS_UCENTRAL_CLIENT),y)
SONIC_PACKAGES += $(DOCKER_OLS_UCENTRAL_CLIENT)
endif
