# set display size
display resize 500 500

# frame to start movie
set start 0
# frame to end movie
set end 1000
# frequency of frame
set freq 10

# subroutine: save i-th frame as snap.xxxx.rgb
proc snapshot {i} {
	# move to i-th frame
	animate goto $i
	# set filename "snap.xxxx.rgb" to a string variable 'filename'
	set filename snap.[format "%06d" $i].rgb
	# save snapshot to file snap.xxxx.rgb
	render snapshot $filename
}

# save snapshot for each frame
for {set i $start} {$i < $end} {incr i $freq} {
	snapshot $i
}

# after it worked: to make animation gif
# $ convert -delay 10 snap.*.gif movie.gif
# or to make mp4
# $ avconv -r 24 -start_number 250 -i snap.%d.png -b:v 300k animation.mp4

