# Copyright (C) 2020 The Brain Repo Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# CarrierSettings, replace CarrierConfig
PRODUCT_PACKAGES += \
    CarrierSettings

# Carrier configs by Google, parsed by CarrierSettings
# Carrier List
PRODUCT_PACKAGES += \
    carrier_list.pb

# Defaults
PRODUCT_PACKAGES += \
    default.pb

# Australia
PRODUCT_PACKAGES += \
    optus_au.pb \
    telstra_au.pb \
    vodafone_au.pb

# Canada
PRODUCT_PACKAGES += \
    bell_ca.pb \
    fido_ca.pb \
    fizz_ca.pb \
    freedommobile_ca.pb \
<<<<<<< HEAD:carriersettings/config.mk
=======
    h3_at.pb \
    h3_gb.pb \
    h3_se.pb \
    idea_in.pb \
    idmobile_gb.pb \
    kddi_jp.pb \
    kddimvno_jp.pb \
>>>>>>> 3678252... hentai: Update carrier databases:config/common_telephony.mk
    koodo_ca.pb \
    luckymobile_ca.pb \
    pcmobilebell_ca.pb \
    rogers_ca.pb \
<<<<<<< HEAD:carriersettings/config.mk
=======
    sfr_fr.pb \
    shaw_ca.pb \
    singtel_sg.pb \
    softbank_jp.pb \
>>>>>>> 3678252... hentai: Update carrier databases:config/common_telephony.mk
    solomobile_ca.pb \
    telus_ca.pb \
    videotron_ca.pb \
    virgin_ca.pb

# France
PRODUCT_PACKAGES += \
    bouygues_fr.pb \
    orange_fr.pb \
    sfr_fr.pb

# Germany
PRODUCT_PACKAGES += \
    o2_de.pb \
    telekom_de.pb \
    vodafone_de.pb

# India
PRODUCT_PACKAGES += \
    airtel_in.pb \
    idea_in.pb \
    rjio_in.pb \
    vodafone_in.pb

# Italy
PRODUCT_PACKAGES += \
    vodafone_it.pb
    bbjprojek_it.bp

# Japan
PRODUCT_PACKAGES += \
    docomo_jp.pb \
    kddi_jp.pb \
    rakuten_jp.pb \
    softbank_jp.pb

# Netherlands
PRODUCT_PACKAGES += \
    vodafone_nl.pb

# Singapore
PRODUCT_PACKAGES += \
    singtel_sg.pb \
    starhub_sg.pb

# Spain
PRODUCT_PACKAGES += \
    orange_es.pb \
    vodafone_es.pb \
    bbjprojek_es.pb

# Taiwan
PRODUCT_PACKAGES += \
    cht_tw.pb \
    fet_tw.pb \
    twm_tw.pb

# United Kingdom
PRODUCT_PACKAGES += \
    ee_gb.pb \
    h3_gb.pb \
    idmobile_gb.pb \
    o2postpaid_gb.pb \
    o2prepaid_gb.pb \
    vodafone_gb.pb
    bbjprojek_gb.pb

# United States
PRODUCT_PACKAGES += \
    att5g_us.pb \
    att_us.pb \
    cellcom_us.pb \
    cricket5g_us.pb \
    cricket_us.pb \
    cspire_us.pb \
    firstnetpacific_us.pb \
    firstnet_us.pb \
    fi_us.pb \
    sprint_us.pb \
    sprintwholesale_us.pb \
<<<<<<< HEAD:carriersettings/config.mk
=======
    starhub_sg.pb \
    swisscom_ch.pb \
    swisscom_li.pb \
    tdc_dk.pb \
    tele2_se.pb \
    telekom_de.pb \
    telenor_dk.pb \
    telenor_no.pb \
    telia_no.pb \
    telia_se.pb \
    telstra_au.pb \
    telus_ca.pb \
    three_dk.pb \
    tim_it.pb \
    tmobile_nl.pb \
>>>>>>> 3678252... hentai: Update carrier databases:config/common_telephony.mk
    tmobile_us.pb \
    uscc_us.pb \
    verizon_us.pb \
    visible_us.pb \
    xfinity_us.pb

# Other countries
PRODUCT_PACKAGES += \
    others.pb
