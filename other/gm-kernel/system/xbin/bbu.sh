#!/system/xbin/busybox sh

bbdir="/system/xbin /system/bin" ; 
ndeletes=0 ; 
for bbpath in $bbdir ; 
	do 
		for f in $(busybox find $bbpath -type l) ; 
			do 
				gnr=$(busybox readlink $f) ; 
				if echo "$gnr" |busybox grep -q busybox ; 
					then 
						busybox rm $f ; 
				fi ; 
		done 
done 

