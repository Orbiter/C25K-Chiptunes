# Track 07-09 / w03   [09] -> repeat 2x: run 1.5 - walk 1.5 - run 3 - walk 3

# clean up
rm -f build/C25K-Chiptunes-w03d01-09min.mp3 
rm -f build/C25K-Chiptunes-w03d02-09min.mp3 
rm -f build/C25K-Chiptunes-w03d03-09min.mp3 

# transcode walking audio in week 3 - the source is too short, so we repeat it four times, then cut it:
ffmpeg -y -i "music/keygen-music/music/AiR/AiR - eLicenser Emulato installer.it" -ar 44100 temp/w03-walking-raw.wav
sox temp/w03-walking-raw.wav temp/w03-walking-raw.wav temp/w03-walking-raw.wav temp/w03-walking-raw.wav temp/w03-walking-big.wav
ffmpeg -y -i temp/w03-walking-big.wav -ss 00:00:00.000 -t 90 -acodec copy temp/w03-walking-90.wav
ffmpeg -y -i temp/w03-walking-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w03-walking-180.wav

# transcode run audio for day 1 in week 3
ffmpeg -y -i "music/keygen-music/music/tPORt/tPORt - Drive Discovery 1.10 kg.mod" -ar 44100 temp/w03d01-running-raw.wav
sox temp/w03d01-running-raw.wav temp/w03d01-running-raw.wav temp/w03d01-running-raw.wav temp/w03d01-running-big.wav
ffmpeg -y -i temp/w03d01-running-big.wav -ss 00:00:00.000 -t 90 -acodec copy temp/w03d01-running-90.wav
ffmpeg -y -i temp/w03d01-running-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w03d01-running-180.wav
sox \
    tts/week/week03.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w03-intro.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w03d01-running-90.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w03-walking-90.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w03d01-running-180.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w03-walking-180.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run90seconds.wav temp/w03d01-running-90.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w03-walking-90.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w03d01-running-180.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w03d01-09min.mp3 

id3v2 -D build/C25K-Chiptunes-w03d01-09min.mp3
id3v2 -2 \
      --TCOM "AiR - eLicenser Emulato installer.it, tPORt - Drive Discovery 1.10 kg.mod" \
      --TIT2 "Week 03 Day 01 - 09 min" --TPE1 "AiR/tPORt" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w03d01-09min.mp3
eyeD3 -2 -n 7 -N 42 build/C25K-Chiptunes-w03d01-09min.mp3

# transcode run audio for day 2 in week 3
ffmpeg -y -i "music/keygen-music/music/ORiON/ORiON - 3DWebButton kg.xm" -ar 44100 temp/w03d02-running-raw.wav
sox temp/w03d02-running-raw.wav temp/w03d02-running-raw.wav temp/w03d02-running-raw.wav temp/w03d02-running-big.wav
ffmpeg -y -i temp/w03d02-running-big.wav -ss 00:00:00.000 -t 90 -acodec copy temp/w03d02-running-90.wav
ffmpeg -y -i temp/w03d02-running-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w03d02-running-180.wav
sox \
    tts/week/week03.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w03-intro.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w03d02-running-90.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w03-walking-90.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w03d02-running-180.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w03-walking-180.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run90seconds.wav temp/w03d02-running-90.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w03-walking-90.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w03d02-running-180.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w03d02-09min.mp3 

id3v2 -D build/C25K-Chiptunes-w03d02-09min.mp3
id3v2 -2 \
      --TCOM "AiR - eLicenser Emulato installer.it, ORiON - 3DWebButton kg.xm" \
      --TIT2 "Week 03 Day 02 - 09 min" --TPE1 "AiR/ORiON" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w03d02-09min.mp3
eyeD3 -2 -n 8 -N 42 build/C25K-Chiptunes-w03d02-09min.mp3

# transcode run audio for day 3 in week 3
ffmpeg -y -i "music/keygen-music/music/ACME/ACME - (Melboorn) - PC Flanc - Who Easy kg.mod" -ar 44100 temp/w03d03-running-raw.wav
sox temp/w03d03-running-raw.wav temp/w03d03-running-raw.wav temp/w03d03-running-raw.wav temp/w03d03-running-big.wav
ffmpeg -y -i temp/w03d03-running-big.wav -ss 00:00:00.000 -t 90 -acodec copy temp/w03d03-running-90.wav
ffmpeg -y -i temp/w03d03-running-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w03d03-running-180.wav
sox \
    tts/week/week03.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w03-intro.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w03d03-running-90.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w03-walking-90.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w03d03-running-180.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w03-walking-180.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run90seconds.wav temp/w03d03-running-90.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w03-walking-90.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w03d03-running-180.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w03d03-09min.mp3 

id3v2 -D build/C25K-Chiptunes-w03d03-09min.mp3
id3v2 -2 \
      --TCOM "AiR - eLicenser Emulato installer.it, ACME - (Melboorn) - PC Flanc - Who Easy kg.mod" \
      --TIT2 "Week 03 Day 03 - 09 min" --TPE1 "AiR/ACME" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w03d03-09min.mp3
eyeD3 -2 -n 9 -N 42 build/C25K-Chiptunes-w03d03-09min.mp3
