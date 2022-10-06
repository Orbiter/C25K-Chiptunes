# Track 16    / w06d01 [20] -> run  6 - walk 3 - run  8 - walk 3 - run 6
# Track 17    / w06d02 [20] -> run 10 - walk 3 - run 10
# Track 18    / w06d03 [22] -> run 22

# clean up
rm -f build/C25K-Chiptunes-w06d01-20min.mp3 
rm -f build/C25K-Chiptunes-w06d02-20min.mp3 
rm -f build/C25K-Chiptunes-w06d03-22min.mp3 

# transcode walking audio in week 6 - the source is too short, so we repeat it three times, then cut it:
ffmpeg -y -i "music/keygen-music/music/!Others/Logic Impact - IntelliJ IDEA 2.5.2 kg.xm" -ar 44100 temp/w06-walking-raw.wav
sox temp/w06-walking-raw.wav temp/w06-walking-raw.wav temp/w06-walking-raw.wav temp/w06-walking-big.wav
ffmpeg -y -i temp/w06-walking-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w06-walking-180.wav

# transcode run audio for day 1 in week 6
ffmpeg -y -i "music/keygen-music/music/uCF/uCF - ZoneAlarm Pro 3.1.395 kg.xm" -ar 44100 temp/w06d01-running-raw.wav
sox temp/w06d01-running-raw.wav temp/w06d01-running-raw.wav temp/w06d01-running-raw.wav temp/w06d01-running-raw.wav temp/w06d01-running-raw.wav temp/w06d01-running-raw.wav temp/w06d01-running-big.wav
ffmpeg -y -i temp/w06d01-running-big.wav -ss 00:00:00.000 -t 360 -acodec copy temp/w06d01-running-360.wav
ffmpeg -y -i temp/w06d01-running-big.wav -ss 00:00:00.000 -t 480 -acodec copy temp/w06d01-running-480.wav
sox \
    tts/week/week06.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w06d01-intro.wav \
    effect/introbeep.wav tts/run/run6minutes.wav temp/w06d01-running-360.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w06-walking-180.wav \
    effect/introbeep.wav tts/run/run8minutes.wav temp/w06d01-running-480.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w06-walking-180.wav \
    effect/introbeep.wav tts/run/run6minutes.wav temp/w06d01-running-360.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w06d01-20min.mp3 

id3v2 -D build/C25K-Chiptunes-w06d01-20min.mp3
id3v2 -2 \
      --TCOM "Logic Impact - IntelliJ IDEA 2.5.2 kg.xm, uCF - ZoneAlarm Pro 3.1.395 kg.mod" \
      --TIT2 "Week 06 Day 01 - 15 min" --TPE1 "Logic Impact/uCF" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w06d01-20min.mp3
eyeD3 -2 -n 16 -N 42 build/C25K-Chiptunes-w06d01-20min.mp3

# transcode run audio for day 2 in week 6
ffmpeg -y -i "music/keygen-music/music/FFF/FFF - PCMark05 1.0.1 crk.xm" -ss 00:00:00.000 -t 93 -ar 44100 temp/w06d02-running-raw.wav
sox temp/w06d02-running-raw.wav temp/w06d02-running-raw.wav temp/w06d02-running-raw.wav temp/w06d02-running-raw.wav temp/w06d02-running-raw.wav temp/w06d02-running-raw.wav temp/w06d02-running-raw.wav temp/w06d02-running-big.wav
ffmpeg -y -i temp/w06d02-running-big.wav -ss 00:00:00.000 -t 600 -acodec copy temp/w06d02-running-600.wav
sox \
    tts/week/week06.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w06d02-intro.wav \
    effect/introbeep.wav tts/run/run10minutes.wav temp/w06d02-running-600.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w06-walking-180.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run10minutes.wav temp/w06d02-running-600.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w06d02-20min.mp3 

id3v2 -D build/C25K-Chiptunes-w06d02-20min.mp3
id3v2 -2 \
      --TCOM "Logic Impact - IntelliJ IDEA 2.5.2 kg.xm, FFF - PCMark05 1.0.1 crk.xm" \
      --TIT2 "Week 06 Day 02 - 20 min" --TPE1 "Logic Impact/FFF" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w06d02-20min.mp3
eyeD3 -2 -n 17 -N 42 build/C25K-Chiptunes-w06d02-20min.mp3


# transcode run audio for day 3 in week 6
ffmpeg -y -i "music/keygen-music/music/AURA/AURA - PDF Extract Tiff 1.3 crk.xm" -ar 44100 temp/w06d03-running-raw.wav
sox temp/w06d03-running-raw.wav temp/w06d03-running-raw.wav temp/w06d03-running-raw.wav temp/w06d03-running-raw.wav temp/w06d03-running-raw.wav temp/w06d03-running-raw.wav temp/w06d03-running-raw.wav temp/w06d03-running-big.wav
ffmpeg -y -i temp/w06d03-running-big.wav -ss 00:00:00.000 -t 660 -acodec copy temp/w06d03-running-660.wav
sox \
    tts/week/week06.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w06d03-intro.wav \
    effect/introbeep.wav tts/run/run22minutes.wav \
    temp/w06d03-running-660.wav tts/say/secondhalf.wav temp/w06d03-running-660.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w06d03-22min.mp3 

id3v2 -D build/C25K-Chiptunes-w06d03-22min.mp3
id3v2 -2 \
      --TCOM "Logic Impact - IntelliJ IDEA 2.5.2 kg.xm, AURA - PDF Extract Tiff 1.3 crk.xm" \
      --TIT2 "Week 06 Day 03 - 22 min" --TPE1 "Logic Impact/AURA" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w06d03-22min.mp3
eyeD3 -2 -n 18 -N 42 build/C25K-Chiptunes-w06d03-22min.mp3
