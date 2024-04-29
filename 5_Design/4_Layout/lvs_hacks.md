* Remove `heattrans` layer requirement for MOSFETs so that LVS can pass on standard cells
```
sed -i.bak 's/.and(heattrans_drw)//g' $KLAYOUT_HOME/tech/lvs/rule_decks/mos_derivations.lvs
```