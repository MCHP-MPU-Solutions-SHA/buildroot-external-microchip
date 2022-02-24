################################################################################
#
# dotnet-runtime
#
################################################################################
DOTNET_RUNTIME_VERSION = 6.0.1 
DOTNET_RUNTIME_SITE = https://download.visualstudio.microsoft.com/download/pr/bdea32df-7ab8-47f5-8f8c-3de28d5771d0/c839293beeace695b6698debaedd345e
DOTNET_RUNTIME_SOURCE = dotnet-runtime-$(DOTNET_RUNTIME_VERSION)-linux-arm.tar.gz
DOTNET_RUNTIME_LICENSE = MIT
DOTNET_RUNTIME_LICENSE_FILES = LICENSE.txt

# Runtime could be installed in the global location [/usr/share/dotnet] and
# will be picked up automatically.
# As alternative, it is possible to use the DOTNET_ROOT environment variable
# to specify the runtime location or register the runtime location in
# [/etc/dotnet/install_location] 
# This script will install runtime to
# /usr/share/dotnet-runtime-$(DOTNET_RUNTIME_VERSION)
define DOTNET_RUNTIME_INSTALL_TARGET_CMDS
    cp -R $(@D) $(TARGET_DIR)/usr/share/
endef

$(eval $(generic-package)) 
