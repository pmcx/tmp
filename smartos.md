echo '{"remove_disks": ["/dev/zvol/rdsk/zones/56551d2c-9205-c759-c02e-e234b2b41af1-disk3"]}' | vmadm update 56551d2c-9205-c759-c02e-e234b2b41af1

echo '{"remove_nics": ["32:fa:33:c3:08:db"]}' | vmadm update 8dc04d92-14c6-67df-bdef-82363d043093
