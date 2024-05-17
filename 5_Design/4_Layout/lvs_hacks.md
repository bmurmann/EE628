# Changes made to LVS

* Removed `heattrans` layer requirement for MOSFETs so that LVS can pass standard cells & IO cells
```
sed -i.bak 's/.and(heattrans_drw)//g' $KLAYOUT_HOME/tech/lvs/rule_decks/mos_derivations.lvs
```

* Removed `mim_drw` exclusion from `mos_derivations` so that MOSFETs can be placed under MIM capacitors.
```
#mos_exclude = pwell_block.join(nsd_drw).join(trans_drw)
#                .join(emwind_drw).join(emwihv_drw).join(heatres_drw)
#                .join(salblock_drw).join(polyres_drw).join(mim_drw)
#                .join(extblock_drw).join(res_drw).join(activ_mask)
#                .join(recog_diode).join(recog_esd).join(ind_drw)
#                .join(ind_pin).join(ind_drw).join(substrate_drw)
mos_exclude = pwell_block.join(nsd_drw).join(trans_drw)
                .join(emwind_drw).join(emwihv_drw).join(heatres_drw)
                .join(salblock_drw).join(polyres_drw)
                .join(extblock_drw).join(res_drw).join(activ_mask)
                .join(recog_diode).join(recog_esd).join(ind_drw)
                .join(ind_pin).join(ind_drw).join(substrate_drw)
```

* Deleted most mimcap-related exclusions from `cap_derivations` to allow placing components underneath.
```
#cap_exc = nsd_drw.join(heattrans_drw).join(trans_drw)
#            .join(emwind_drw).join(emwihv_drw).join(heatres_drw)
#            .join(salblock_drw).join(polyres_drw).join(extblock_drw)
#            .join(res_drw).join(activ_mask).join(recog_diode)
#            .join(recog_esd).join(ind_drw).join(ind_pin)
#            .join(substrate_drw)
cap_exc = recog_esd.join(ind_drw).join(ind_pin)
```
```
# === MIMCAP ===
#mimcap_exclude = rfmimcap_exc.join(pwell_block).join(ptap_holes)
mimcap_exclude = recog_esd.join(ind_drw).join(ind_pin)
```

* Disabled RF devices in `rfmos_derivations.lvs`. The extraction hallucinates extra RF MOSFETs inside guard rings (including seal ring). 
