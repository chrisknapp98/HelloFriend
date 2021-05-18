TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HelloFriend

test_FILES = Tweak.xm
test_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk