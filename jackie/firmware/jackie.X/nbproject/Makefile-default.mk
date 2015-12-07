#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../../../../bsp/pic32mz_ec_sk+meb2/bsp_sys_init.c ../../../../framework/crypto/src/random.c ../../../../framework/crypto/src/arc4.c ../../../../framework/crypto/src/crypto.c ../../../../framework/driver/camera/ovm7690/src/drv_camera_ovm7690.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../../../../framework/driver/gfx/controller/lcc/src/drv_gfx_lcc_int_pe.c ../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../framework/driver/spi/src/dynamic/drv_spi_api.c ../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_client_table.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_com.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_commands.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connect.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_eint.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_events.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_init.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac_pic32.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_raw.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_scan.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_spi.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_common.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_tcpclient_txt.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_uart.c ../../../../framework/tcpip/src/system/drivers/usart.c ../../../../framework/system/console/src/sys_console.c ../../../../framework/system/console/src/sys_console_appio.c ../../../../framework/system/debug/src/sys_debug.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../framework/system/dma/src/sys_dma.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/reset/src/sys_reset.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/big_int.c ../../../../framework/tcpip/src/common/big_int_helper_c32.S ../../../../framework/tcpip/src/common/hashes.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/common/lfsr.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/nbns.c ../../../../framework/tcpip/src/zero_conf_helper.c ../../../../framework/tcpip/src/zero_conf_link_local.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c ../../../../framework/tcpip/src/ipv4.c ../../../../framework/tcpip/src/system/system_debug.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o ${OBJECTDIR}/_ext/1886890887/random.o ${OBJECTDIR}/_ext/1886890887/arc4.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o ${OBJECTDIR}/_ext/568870469/drv_spi.o ${OBJECTDIR}/_ext/568870469/drv_spi_api.o ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/260586732/drv_usart.o ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o ${OBJECTDIR}/_ext/1577648178/usart.o ${OBJECTDIR}/_ext/30809027/sys_console.o ${OBJECTDIR}/_ext/30809027/sys_console_appio.o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/65930274/sys_dma.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/813494389/sys_reset.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/big_int.o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ${OBJECTDIR}/_ext/1136935090/hashes.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1136935090/lfsr.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/nbns.o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ${OBJECTDIR}/_ext/1408260596/ipv4.o ${OBJECTDIR}/_ext/669448302/system_debug.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o.d ${OBJECTDIR}/_ext/1886890887/random.o.d ${OBJECTDIR}/_ext/1886890887/arc4.o.d ${OBJECTDIR}/_ext/1886890887/crypto.o.d ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o.d ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o.d ${OBJECTDIR}/_ext/568870469/drv_spi.o.d ${OBJECTDIR}/_ext/568870469/drv_spi_api.o.d ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d ${OBJECTDIR}/_ext/260586732/drv_usart.o.d ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o.d ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o.d ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o.d ${OBJECTDIR}/_ext/1577648178/usart.o.d ${OBJECTDIR}/_ext/30809027/sys_console.o.d ${OBJECTDIR}/_ext/30809027/sys_console_appio.o.d ${OBJECTDIR}/_ext/1408546951/sys_debug.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/65930274/sys_dma.o.d ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d ${OBJECTDIR}/_ext/77319752/sys_ports.o.d ${OBJECTDIR}/_ext/1283840359/sys_random.o.d ${OBJECTDIR}/_ext/813494389/sys_reset.o.d ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d ${OBJECTDIR}/_ext/1136935090/big_int.o.d ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d ${OBJECTDIR}/_ext/1136935090/hashes.o.d ${OBJECTDIR}/_ext/1136935090/helpers.o.d ${OBJECTDIR}/_ext/1136935090/lfsr.o.d ${OBJECTDIR}/_ext/1408260596/tcp.o.d ${OBJECTDIR}/_ext/1408260596/udp.o.d ${OBJECTDIR}/_ext/1408260596/arp.o.d ${OBJECTDIR}/_ext/1408260596/dhcp.o.d ${OBJECTDIR}/_ext/1408260596/dns.o.d ${OBJECTDIR}/_ext/1408260596/icmp.o.d ${OBJECTDIR}/_ext/1408260596/nbns.o.d ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d ${OBJECTDIR}/_ext/1408260596/oahash.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d ${OBJECTDIR}/_ext/1408260596/ipv4.o.d ${OBJECTDIR}/_ext/669448302/system_debug.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o ${OBJECTDIR}/_ext/1886890887/random.o ${OBJECTDIR}/_ext/1886890887/arc4.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o ${OBJECTDIR}/_ext/568870469/drv_spi.o ${OBJECTDIR}/_ext/568870469/drv_spi_api.o ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ${OBJECTDIR}/_ext/260586732/drv_usart.o ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o ${OBJECTDIR}/_ext/1577648178/usart.o ${OBJECTDIR}/_ext/30809027/sys_console.o ${OBJECTDIR}/_ext/30809027/sys_console_appio.o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/65930274/sys_dma.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/1283840359/sys_random.o ${OBJECTDIR}/_ext/813494389/sys_reset.o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ${OBJECTDIR}/_ext/1136935090/big_int.o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ${OBJECTDIR}/_ext/1136935090/hashes.o ${OBJECTDIR}/_ext/1136935090/helpers.o ${OBJECTDIR}/_ext/1136935090/lfsr.o ${OBJECTDIR}/_ext/1408260596/tcp.o ${OBJECTDIR}/_ext/1408260596/udp.o ${OBJECTDIR}/_ext/1408260596/arp.o ${OBJECTDIR}/_ext/1408260596/dhcp.o ${OBJECTDIR}/_ext/1408260596/dns.o ${OBJECTDIR}/_ext/1408260596/icmp.o ${OBJECTDIR}/_ext/1408260596/nbns.o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ${OBJECTDIR}/_ext/1408260596/oahash.o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ${OBJECTDIR}/_ext/1408260596/ipv4.o ${OBJECTDIR}/_ext/669448302/system_debug.o

# Source Files
SOURCEFILES=../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../../../../bsp/pic32mz_ec_sk+meb2/bsp_sys_init.c ../../../../framework/crypto/src/random.c ../../../../framework/crypto/src/arc4.c ../../../../framework/crypto/src/crypto.c ../../../../framework/driver/camera/ovm7690/src/drv_camera_ovm7690.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../../../../framework/driver/gfx/controller/lcc/src/drv_gfx_lcc_int_pe.c ../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../framework/driver/spi/src/dynamic/drv_spi_api.c ../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_client_table.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_com.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_commands.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connect.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_eint.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_events.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_init.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac_pic32.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_raw.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_scan.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_spi.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_common.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_tcpclient_txt.c ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_uart.c ../../../../framework/tcpip/src/system/drivers/usart.c ../../../../framework/system/console/src/sys_console.c ../../../../framework/system/console/src/sys_console_appio.c ../../../../framework/system/debug/src/sys_debug.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../framework/system/dma/src/sys_dma.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../../framework/system/random/src/sys_random.c ../../../../framework/system/reset/src/sys_reset.c ../../../../framework/system/tmr/src/sys_tmr.c ../../../../framework/tcpip/src/common/big_int.c ../../../../framework/tcpip/src/common/big_int_helper_c32.S ../../../../framework/tcpip/src/common/hashes.c ../../../../framework/tcpip/src/common/helpers.c ../../../../framework/tcpip/src/common/lfsr.c ../../../../framework/tcpip/src/tcp.c ../../../../framework/tcpip/src/udp.c ../../../../framework/tcpip/src/arp.c ../../../../framework/tcpip/src/dhcp.c ../../../../framework/tcpip/src/dns.c ../../../../framework/tcpip/src/icmp.c ../../../../framework/tcpip/src/nbns.c ../../../../framework/tcpip/src/zero_conf_helper.c ../../../../framework/tcpip/src/zero_conf_link_local.c ../../../../framework/tcpip/src/tcpip_announce.c ../../../../framework/tcpip/src/hash_fnv.c ../../../../framework/tcpip/src/oahash.c ../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../framework/tcpip/src/tcpip_helpers.c ../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../framework/tcpip/src/tcpip_manager.c ../../../../framework/tcpip/src/tcpip_notify.c ../../../../framework/tcpip/src/tcpip_packet.c ../../../../framework/tcpip/src/ipv4.c ../../../../framework/tcpip/src/system/system_debug.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048ECH144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o: ../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o ../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o: ../../../../framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ../../../../framework/tcpip/src/common/big_int_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o: ../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o ../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1271179505/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o: ../../../../framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o ../../../../framework/tcpip/src/common/big_int_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1136935090/big_int_helper_c32.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o: ../../../../framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o ../../../../framework/tcpip/src/tcpip_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1408260596/tcpip_helper_c32.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/12144542/drv_i2c_static.o: ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12144542" 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" -o ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c   
	
${OBJECTDIR}/_ext/1047219354/drv_oc_static.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c   
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c   
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c   
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o: ../../../../bsp/pic32mz_ec_sk+meb2/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891884147" 
	@${RM} ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o ../../../../bsp/pic32mz_ec_sk+meb2/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/1886890887/random.o: ../../../../framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1886890887/random.o.d" -o ${OBJECTDIR}/_ext/1886890887/random.o ../../../../framework/crypto/src/random.c   
	
${OBJECTDIR}/_ext/1886890887/arc4.o: ../../../../framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1886890887/arc4.o.d" -o ${OBJECTDIR}/_ext/1886890887/arc4.o ../../../../framework/crypto/src/arc4.c   
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c   
	
${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o: ../../../../framework/driver/camera/ovm7690/src/drv_camera_ovm7690.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1022184765" 
	@${RM} ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o.d 
	@${RM} ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o.d" -o ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o ../../../../framework/driver/camera/ovm7690/src/drv_camera_ovm7690.c   
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c   
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c   
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c   
	
${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c   
	
${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o: ../../../../framework/driver/gfx/controller/lcc/src/drv_gfx_lcc_int_pe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1390999610" 
	@${RM} ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o.d" -o ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o ../../../../framework/driver/gfx/controller/lcc/src/drv_gfx_lcc_int_pe.c   
	
${OBJECTDIR}/_ext/568870469/drv_spi.o: ../../../../framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/568870469" 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/568870469/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/568870469/drv_spi.o.d" -o ${OBJECTDIR}/_ext/568870469/drv_spi.o ../../../../framework/driver/spi/src/dynamic/drv_spi.c   
	
${OBJECTDIR}/_ext/568870469/drv_spi_api.o: ../../../../framework/driver/spi/src/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/568870469" 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/568870469/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/568870469/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/568870469/drv_spi_api.o ../../../../framework/driver/spi/src/dynamic/drv_spi_api.c   
	
${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o: ../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/465164171" 
	@${RM} ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o ../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c   
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c   
	
${OBJECTDIR}/_ext/260586732/drv_usart.o: ../../../../framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/260586732" 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/260586732/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/260586732/drv_usart.o.d" -o ${OBJECTDIR}/_ext/260586732/drv_usart.o ../../../../framework/driver/usart/src/dynamic/drv_usart.c   
	
${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o: ../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/260586732" 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o ../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c   
	
${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o: ../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/260586732" 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o ../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_client_table.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_client_table.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_com.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_com.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_com.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_commands.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connect.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_eint.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_events.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_events.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_events.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_init.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_init.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_init.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac_pic32.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_raw.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_scan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_scan.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_spi.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_common.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_tcpclient_txt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_tcpclient_txt.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_uart.c   
	
${OBJECTDIR}/_ext/1577648178/usart.o: ../../../../framework/tcpip/src/system/drivers/usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1577648178" 
	@${RM} ${OBJECTDIR}/_ext/1577648178/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1577648178/usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1577648178/usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1577648178/usart.o.d" -o ${OBJECTDIR}/_ext/1577648178/usart.o ../../../../framework/tcpip/src/system/drivers/usart.c   
	
${OBJECTDIR}/_ext/30809027/sys_console.o: ../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console.o ../../../../framework/system/console/src/sys_console.c   
	
${OBJECTDIR}/_ext/30809027/sys_console_appio.o: ../../../../framework/system/console/src/sys_console_appio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_appio.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_appio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console_appio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console_appio.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console_appio.o ../../../../framework/system/console/src/sys_console_appio.c   
	
${OBJECTDIR}/_ext/1408546951/sys_debug.o: ../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408546951" 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" -o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ../../../../framework/system/debug/src/sys_debug.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o ../../../../framework/system/devcon/src/sys_devcon_pic32mz.c   
	
${OBJECTDIR}/_ext/65930274/sys_dma.o: ../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/65930274" 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" -o ${OBJECTDIR}/_ext/65930274/sys_dma.o ../../../../framework/system/dma/src/sys_dma.c   
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c   
	
${OBJECTDIR}/_ext/813494389/sys_reset.o: ../../../../framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/813494389" 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" -o ${OBJECTDIR}/_ext/813494389/sys_reset.o ../../../../framework/system/reset/src/sys_reset.c   
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c   
	
${OBJECTDIR}/_ext/1136935090/big_int.o: ../../../../framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int.o.d" -o ${OBJECTDIR}/_ext/1136935090/big_int.o ../../../../framework/tcpip/src/common/big_int.c   
	
${OBJECTDIR}/_ext/1136935090/hashes.o: ../../../../framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/hashes.o.d" -o ${OBJECTDIR}/_ext/1136935090/hashes.o ../../../../framework/tcpip/src/common/hashes.c   
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c   
	
${OBJECTDIR}/_ext/1136935090/lfsr.o: ../../../../framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" -o ${OBJECTDIR}/_ext/1136935090/lfsr.o ../../../../framework/tcpip/src/common/lfsr.c   
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c   
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c   
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c   
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c   
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c   
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c   
	
${OBJECTDIR}/_ext/1408260596/nbns.o: ../../../../framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/nbns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/nbns.o.d" -o ${OBJECTDIR}/_ext/1408260596/nbns.o ../../../../framework/tcpip/src/nbns.c   
	
${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o: ../../../../framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ../../../../framework/tcpip/src/zero_conf_helper.c   
	
${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o: ../../../../framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ../../../../framework/tcpip/src/zero_conf_link_local.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c   
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c   
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c   
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c   
	
${OBJECTDIR}/_ext/669448302/system_debug.o: ../../../../framework/tcpip/src/system/system_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/669448302" 
	@${RM} ${OBJECTDIR}/_ext/669448302/system_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/669448302/system_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/669448302/system_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/669448302/system_debug.o.d" -o ${OBJECTDIR}/_ext/669448302/system_debug.o ../../../../framework/tcpip/src/system/system_debug.c   
	
else
${OBJECTDIR}/_ext/12144542/drv_i2c_static.o: ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12144542" 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/12144542/drv_i2c_static.o.d" -o ${OBJECTDIR}/_ext/12144542/drv_i2c_static.o ../src/system_config/default/framework/driver/i2c/src/drv_i2c_static.c   
	
${OBJECTDIR}/_ext/1047219354/drv_oc_static.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c   
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c   
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c   
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o: ../../../../bsp/pic32mz_ec_sk+meb2/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891884147" 
	@${RM} ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1891884147/bsp_sys_init.o ../../../../bsp/pic32mz_ec_sk+meb2/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/1886890887/random.o: ../../../../framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1886890887/random.o.d" -o ${OBJECTDIR}/_ext/1886890887/random.o ../../../../framework/crypto/src/random.c   
	
${OBJECTDIR}/_ext/1886890887/arc4.o: ../../../../framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1886890887/arc4.o.d" -o ${OBJECTDIR}/_ext/1886890887/arc4.o ../../../../framework/crypto/src/arc4.c   
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c   
	
${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o: ../../../../framework/driver/camera/ovm7690/src/drv_camera_ovm7690.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1022184765" 
	@${RM} ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o.d 
	@${RM} ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o.d" -o ${OBJECTDIR}/_ext/1022184765/drv_camera_ovm7690.o ../../../../framework/driver/camera/ovm7690/src/drv_camera_ovm7690.c   
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c   
	
${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o: ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1908841681" 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1908841681/drv_ethmac_lib.o ../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c   
	
${OBJECTDIR}/_ext/732687875/drv_ethphy.o: ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_ethphy.o ../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c   
	
${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o: ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732687875" 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/732687875/drv_extphy_smsc8740.o ../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c   
	
${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o: ../../../../framework/driver/gfx/controller/lcc/src/drv_gfx_lcc_int_pe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1390999610" 
	@${RM} ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o.d" -o ${OBJECTDIR}/_ext/1390999610/drv_gfx_lcc_int_pe.o ../../../../framework/driver/gfx/controller/lcc/src/drv_gfx_lcc_int_pe.c   
	
${OBJECTDIR}/_ext/568870469/drv_spi.o: ../../../../framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/568870469" 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/568870469/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/568870469/drv_spi.o.d" -o ${OBJECTDIR}/_ext/568870469/drv_spi.o ../../../../framework/driver/spi/src/dynamic/drv_spi.c   
	
${OBJECTDIR}/_ext/568870469/drv_spi_api.o: ../../../../framework/driver/spi/src/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/568870469" 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/568870469/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/568870469/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/568870469/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/568870469/drv_spi_api.o ../../../../framework/driver/spi/src/dynamic/drv_spi_api.c   
	
${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o: ../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/465164171" 
	@${RM} ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/465164171/drv_spi_sys_queue_fifo.o ../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c   
	
${OBJECTDIR}/_ext/185269848/drv_tmr.o: ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/185269848" 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/185269848/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/185269848/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/185269848/drv_tmr.o ../../../../framework/driver/tmr/src/dynamic/drv_tmr.c   
	
${OBJECTDIR}/_ext/260586732/drv_usart.o: ../../../../framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/260586732" 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/260586732/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/260586732/drv_usart.o.d" -o ${OBJECTDIR}/_ext/260586732/drv_usart.o ../../../../framework/driver/usart/src/dynamic/drv_usart.c   
	
${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o: ../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/260586732" 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/260586732/drv_usart_buffer_queue.o ../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c   
	
${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o: ../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/260586732" 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/260586732/drv_usart_read_write.o ../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_client_table.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_client_table.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_client_table.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_com.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_com.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_com.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_com.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_commands.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_commands.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_config_data.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connect.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connect.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_algorithm.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_manager.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_connection_profile.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_debug_output.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_easy_config.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_eint.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_eint.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_events.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_events.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_events.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_events.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_event_handler.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_init.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_init.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_init.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_init.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_mac_pic32.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mac_pic32.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_mgmt_msg.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_param_msg.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_pbkdf2.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_power_save.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_raw.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_raw.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_scan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_scan.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_scan.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_spi.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_spi.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_tx_power.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_common.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_common.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_tcpclient_txt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_tcpclient_txt.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_tcpclient_txt.c   
	
${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o: ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/267259251" 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o.d" -o ${OBJECTDIR}/_ext/267259251/drv_wifi_update_firmware_uart.o ../../../../framework/driver/wifi/mrf24w/src/drv_wifi_update_firmware_uart.c   
	
${OBJECTDIR}/_ext/1577648178/usart.o: ../../../../framework/tcpip/src/system/drivers/usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1577648178" 
	@${RM} ${OBJECTDIR}/_ext/1577648178/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1577648178/usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1577648178/usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1577648178/usart.o.d" -o ${OBJECTDIR}/_ext/1577648178/usart.o ../../../../framework/tcpip/src/system/drivers/usart.c   
	
${OBJECTDIR}/_ext/30809027/sys_console.o: ../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console.o ../../../../framework/system/console/src/sys_console.c   
	
${OBJECTDIR}/_ext/30809027/sys_console_appio.o: ../../../../framework/system/console/src/sys_console_appio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/30809027" 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_appio.o.d 
	@${RM} ${OBJECTDIR}/_ext/30809027/sys_console_appio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/30809027/sys_console_appio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/30809027/sys_console_appio.o.d" -o ${OBJECTDIR}/_ext/30809027/sys_console_appio.o ../../../../framework/system/console/src/sys_console_appio.c   
	
${OBJECTDIR}/_ext/1408546951/sys_debug.o: ../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408546951" 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" -o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ../../../../framework/system/debug/src/sys_debug.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mz.o ../../../../framework/system/devcon/src/sys_devcon_pic32mz.c   
	
${OBJECTDIR}/_ext/65930274/sys_dma.o: ../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/65930274" 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" -o ${OBJECTDIR}/_ext/65930274/sys_dma.o ../../../../framework/system/dma/src/sys_dma.c   
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/1283840359/sys_random.o: ../../../../framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283840359" 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283840359/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1283840359/sys_random.o.d" -o ${OBJECTDIR}/_ext/1283840359/sys_random.o ../../../../framework/system/random/src/sys_random.c   
	
${OBJECTDIR}/_ext/813494389/sys_reset.o: ../../../../framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/813494389" 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/813494389/sys_reset.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/813494389/sys_reset.o.d" -o ${OBJECTDIR}/_ext/813494389/sys_reset.o ../../../../framework/system/reset/src/sys_reset.c   
	
${OBJECTDIR}/_ext/1264926591/sys_tmr.o: ../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1264926591" 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264926591/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1264926591/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1264926591/sys_tmr.o ../../../../framework/system/tmr/src/sys_tmr.c   
	
${OBJECTDIR}/_ext/1136935090/big_int.o: ../../../../framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/big_int.o.d" -o ${OBJECTDIR}/_ext/1136935090/big_int.o ../../../../framework/tcpip/src/common/big_int.c   
	
${OBJECTDIR}/_ext/1136935090/hashes.o: ../../../../framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/hashes.o.d" -o ${OBJECTDIR}/_ext/1136935090/hashes.o ../../../../framework/tcpip/src/common/hashes.c   
	
${OBJECTDIR}/_ext/1136935090/helpers.o: ../../../../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/helpers.o.d" -o ${OBJECTDIR}/_ext/1136935090/helpers.o ../../../../framework/tcpip/src/common/helpers.c   
	
${OBJECTDIR}/_ext/1136935090/lfsr.o: ../../../../framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136935090" 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136935090/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1136935090/lfsr.o.d" -o ${OBJECTDIR}/_ext/1136935090/lfsr.o ../../../../framework/tcpip/src/common/lfsr.c   
	
${OBJECTDIR}/_ext/1408260596/tcp.o: ../../../../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcp.o ../../../../framework/tcpip/src/tcp.c   
	
${OBJECTDIR}/_ext/1408260596/udp.o: ../../../../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/udp.o.d" -o ${OBJECTDIR}/_ext/1408260596/udp.o ../../../../framework/tcpip/src/udp.c   
	
${OBJECTDIR}/_ext/1408260596/arp.o: ../../../../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/arp.o.d" -o ${OBJECTDIR}/_ext/1408260596/arp.o ../../../../framework/tcpip/src/arp.c   
	
${OBJECTDIR}/_ext/1408260596/dhcp.o: ../../../../framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dhcp.o.d" -o ${OBJECTDIR}/_ext/1408260596/dhcp.o ../../../../framework/tcpip/src/dhcp.c   
	
${OBJECTDIR}/_ext/1408260596/dns.o: ../../../../framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/dns.o.d" -o ${OBJECTDIR}/_ext/1408260596/dns.o ../../../../framework/tcpip/src/dns.c   
	
${OBJECTDIR}/_ext/1408260596/icmp.o: ../../../../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/icmp.o.d" -o ${OBJECTDIR}/_ext/1408260596/icmp.o ../../../../framework/tcpip/src/icmp.c   
	
${OBJECTDIR}/_ext/1408260596/nbns.o: ../../../../framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/nbns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/nbns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/nbns.o.d" -o ${OBJECTDIR}/_ext/1408260596/nbns.o ../../../../framework/tcpip/src/nbns.c   
	
${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o: ../../../../framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_helper.o ../../../../framework/tcpip/src/zero_conf_helper.c   
	
${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o: ../../../../framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o.d" -o ${OBJECTDIR}/_ext/1408260596/zero_conf_link_local.o ../../../../framework/tcpip/src/zero_conf_link_local.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_announce.o: ../../../../framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_announce.o ../../../../framework/tcpip/src/tcpip_announce.c   
	
${OBJECTDIR}/_ext/1408260596/hash_fnv.o: ../../../../framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1408260596/hash_fnv.o ../../../../framework/tcpip/src/hash_fnv.c   
	
${OBJECTDIR}/_ext/1408260596/oahash.o: ../../../../framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/oahash.o.d" -o ${OBJECTDIR}/_ext/1408260596/oahash.o ../../../../framework/tcpip/src/oahash.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o: ../../../../framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_heap_alloc.o ../../../../framework/tcpip/src/tcpip_heap_alloc.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o: ../../../../framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_helpers.o ../../../../framework/tcpip/src/tcpip_helpers.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_manager.o: ../../../../framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_manager.o ../../../../framework/tcpip/src/tcpip_manager.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_notify.o: ../../../../framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_notify.o ../../../../framework/tcpip/src/tcpip_notify.c   
	
${OBJECTDIR}/_ext/1408260596/tcpip_packet.o: ../../../../framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1408260596/tcpip_packet.o ../../../../framework/tcpip/src/tcpip_packet.c   
	
${OBJECTDIR}/_ext/1408260596/ipv4.o: ../../../../framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408260596" 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408260596/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/1408260596/ipv4.o.d" -o ${OBJECTDIR}/_ext/1408260596/ipv4.o ../../../../framework/tcpip/src/ipv4.c   
	
${OBJECTDIR}/_ext/669448302/system_debug.o: ../../../../framework/tcpip/src/system/system_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/669448302" 
	@${RM} ${OBJECTDIR}/_ext/669448302/system_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/669448302/system_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/669448302/system_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../bsp/pic32mz_ec_sk+meb2" -MMD -MF "${OBJECTDIR}/_ext/669448302/system_debug.o.d" -o ${OBJECTDIR}/_ext/669448302/system_debug.o ../../../../framework/tcpip/src/system/system_debug.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MZ2048ECH144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../bin/framework/peripheral/PIC32MZ2048ECH144_peripherals.a       -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MZ2048ECH144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../bin/framework/peripheral/PIC32MZ2048ECH144_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/jackie.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
