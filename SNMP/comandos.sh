##### WALK e TRANSLATE ####

snmpwalk -v2c -c <COMUNITY> <IP> -On <OID>
snmptranslate -Tz -m ./<MIB>

##### DIRETORIO SNMP ######

mkdir -p $HOME/.snmp
for i in `ls -d /usr/share/snmp/mibs/vendors/*/`; do
 echo "mibdirs +$i" > $HOME/.snmp/snmp.conf
 export MIBDIRS=$MIBDIRS:$i
done

##### EXPORT MIBS ######

export MIBS=+ALL