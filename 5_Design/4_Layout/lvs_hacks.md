# Changes made to LVS



* Removed `heattrans` layer requirement for MOSFETs so that LVS can pass on standard cells & IO cells
```
sed -i.bak 's/.and(heattrans_drw)//g' $KLAYOUT_HOME/tech/lvs/rule_decks/mos_derivations.lvs
```

* Changed `dpantenna` diode derivation (diode_derivations.lvs)

```
#diode_exclude = gatpoly_drw.join(nwell_drw).join(nsd_drw)
#                    .join(heattrans_drw).join(trans_drw).join(emwind_drw)
#                    .join(emwihv_drw).join(heatres_drw).join(polyres_drw)
#                    .join(mim_drw).join(extblock_drw).join(res_drw)
#                    .join(activ_mask).join(recog_esd).join(ind_drw)
#                    .join(ind_pin).join(substrate_drw)
diode_exclude = gatpoly_drw.join(nsd_drw)
                    .join(heattrans_drw).join(trans_drw).join(emwind_drw)
                    .join(emwihv_drw).join(heatres_drw).join(polyres_drw)
                    .join(mim_drw).join(extblock_drw).join(res_drw)
                    .join(activ_mask).join(recog_esd).join(ind_drw)
                    .join(ind_pin).join(substrate_drw)
```
```
# ==== dpantenna diode ====
#dpantenna_n = pactiv.and(antenna_d_mk)
#dpantenna_p = pwell.and(antenna_d_mk).covering(dpantenna_n)
dpantenna_p = pactiv.and(antenna_d_mk)
dpantenna_n = nwell_drw.and(antenna_d_mk).covering(dpantenna_p)
```

* Changed `rppd` derivation (res_derivations.lvs). Why not allow it on nwell?
```
#polyres_exclude = activ_drw.join(nwell_drw).join(pwell_block)
#                    .join(nsd_block).join(nbulay_drw).join(thickgateox_drw)
#                    .join(heattrans_drw).join(trans_drw).join(emwind_drw)
#                    .join(emwihv_drw).join(mim_drw).join(activ_mask)
#                    .join(recog_diode).join(recog_esd).join(ind_drw)
#                    .join(ind_pin).join(substrate_drw)
polyres_exclude = activ_drw.join(pwell_block)
                    .join(nsd_block).join(nbulay_drw).join(thickgateox_drw)
                    .join(heattrans_drw).join(trans_drw).join(emwind_drw)
                    .join(emwihv_drw).join(mim_drw).join(activ_mask)
                    .join(recog_diode).join(recog_esd).join(ind_drw)
                    .join(ind_pin).join(substrate_drw)
```