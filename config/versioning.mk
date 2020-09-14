# Versioning System
CAF_BASE_VERSION = 4.3
CAF_CODENAME := uranium
BR_MAINTAINER ?= Unknown

# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

TARGET_PRODUCT_SHORT := $(subst caf_,,$(CUSTOM_BUILD))

CAF_VERSION := $(CAF_CODENAME)-$(CAF_BASE_VERSION)-$(TARGET_PRODUCT_SHORT)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)

CUSTOM_VERSION := BrainRepo_$(CAF_CODENAME)_$(CAF_BASE_VERSION)_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := 10
CUSTOM_PLATFORM_VERSION := ten

CUSTOM_PROPERTIES := \
    org.brainrepo.version=$(CAF_VERSION) \
    org.brainrepo.version.prop=$(CUSTOM_PLATFORM_VERSION) \
    org.brainrepo.version.display=$(CUSTOM_VERSION) \
    org.brainrepo.build_version=$(CAF_BASE_VERSION) \
    org.brainrepo.build_date=$(CUSTOM_BUILD_DATE) \
    org.brainrepo.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.brainrepo.build_type=$(CUSTOM_BUILD_TYPE) \
    org.brainrepo.build_maintainer=$(BR_MAINTAINER) \
    org.brainrepo.build_codename=$(CAF_CODENAME)
