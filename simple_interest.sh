# this script calculates and produces a set of video files with a maximum duration of 30 seconds extracted from an original video named new.mp4
# Author: Seatlle (seatlle company)
#!/bin/bash
if [ ! -e whatsapp ]
then
    mkdir whatsapp
fi
let "j = 1"
for i in `seq 0 30 219`;
do
    let "sec = i%60"
    #echo -e "valeur en seconde $sec"
    let "min = i/60"
    #echo -e "valeur des minutes $min \n"
    #let "sec_e = (sec + 30)%60"
    #echo -e "valeur de seconde d'extremite $sec_e "
    #let "min_e = min + (sec + 30)/60"
    #echo -e "valeur des minutes d'extremit $min_e \n \n"
    execute=`ffmpeg -i new.mp4 -ss 00:$min:$sec.00 -t 00:00:30 whatsapp/w$j.mp4`
    #exec=`mv whatsapp/whatsapp.mp4 whatsapp/w$j.mp4`
    let "j +=1 "
done

#  0 30 ...
