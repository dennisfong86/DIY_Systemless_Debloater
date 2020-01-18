MODDIR=${0%/*}

DEBLOAT="`cat $MODPATH/chosen_debloat`"

#Handle replace folders
for DEBLOAT_APP in $DEBLOAT; do
	if [ -d $DEBLOAT_APP ]; then
		ui_print $DEBLOAT_APP >> $TMPDIR/MATCH_DIR
		REPLACE="`cat $TMPDIR/MATCH_DIR`"
	fi
done
