git clone https://github.com/sxiii/keygen-music.git

mkdir atari
cd atari
wget http://ftp.pigwa.net/stuff/mirror/chiptunes.org/chiptunes-full-000825.tar.gz
tar xfz chiptunes-full-000825.tar.gz
cd ..

mkdir -p web
cd web
wget https://ftp.dim13.org/pub/mod/xm/Canterwood%20-%20Hex%20Workshop%20v4.22kg.xm

# hear them https://keygenmusic.tk/

# can be converted with i.e.
# for f in music/atari/Artists/2pac/*.mod; do ./ffmpeg2wav.sh "$f";done
