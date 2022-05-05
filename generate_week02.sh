# Track 04-06 / w02   [09] -> repeat 6x: run 1.5 - walk 2

# clean up
rm -f build/C25K-Chiptunes-w02d01-09min.mp3 
rm -f build/C25K-Chiptunes-w02d02-09min.mp3 
rm -f build/C25K-Chiptunes-w02d03-09min.mp3 

# transcode walking audio in week 2 - the source is too short, so we repeat it four times, then cut it:
ffmpeg -y -i "music/atari/Artists/Dalezy/tu_gia05.mod" -ar 44100 temp/w02-walking-raw.wav
ffmpeg -y -i temp/w02-walking-raw.wav -ss 00:00:00.000 -t 34 -acodec copy temp/w02-walking-cut.wav
sox temp/w02-walking-cut.wav temp/w02-walking-cut.wav temp/w02-walking-cut.wav temp/w02-walking-cut.wav temp/w02-walking-big.wav
ffmpeg -y -i temp/w02-walking-big.wav -ss 00:00:00.000 -t 120 -acodec copy temp/w02-walking.wav

# transcode run audio for day 1 in week 2
ffmpeg -y -i "music/keygen-music/music/!Others/Cafe - 010 Editor 2.0 kg.xm" -ar 44100 temp/w02d01-running.wav
sox \
    tts/week/week02.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w02-intro.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d01-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d01-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d01-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run90seconds.wav temp/w02d01-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d01-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d01-running.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w02d01-09min.mp3 

id3v2 -D build/C25K-Chiptunes-w02d01-09min.mp3
id3v2 -2 \
      --TCOM "Dalezy tu_gia05.mod, !Others/Cafe - 010 Editor 2.0 kg.xm" \
      --TIT2 "Week 02 Day 01 - 09 min" --TPE1 "Dalezy/!Others" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w02d01-09min.mp3
eyeD3 -2 -n 4 -N 42 build/C25K-Chiptunes-w02d01-09min.mp3


# transcode run audio for day 2 in week 2
ffmpeg -y -i "music/keygen-music/music/CORE/CORE - Adobe Dreamweaver CS4 10.0 kg.xm" -ar 44100 temp/w02d02-running.wav
sox \
    tts/week/week02.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w02-intro.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d02-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d02-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d02-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run90seconds.wav temp/w02d02-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d02-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d02-running.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w02d02-09min.mp3 

id3v2 -D build/C25K-Chiptunes-w02d02-09min.mp3
id3v2 -2 \
      --TCOM "Dalezy tu_gia05.mod, !Others/CORE - Adobe Dreamweaver CS4 10.0 kg.xm" \
      --TIT2 "Week 02 Day 02 - 09 min" --TPE1 "Dalezy/CORE" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w02d02-09min.mp3
eyeD3 -2 -n 5 -N 42 build/C25K-Chiptunes-w02d02-09min.mp3

# transcode run audio for day 3 in week 2
ffmpeg -y -i "music/keygen-music/music/MESMERiZE/MESMERiZE - ExifCleaner kg.xm" -ar 44100 temp/w02d03-running.wav
sox \
    tts/week/week02.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w02-intro.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d03-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d03-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d03-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run90seconds.wav temp/w02d03-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d03-running.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w02-walking.wav \
    effect/introbeep.wav tts/run/run90seconds.wav temp/w02d03-running.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w02d03-09min.mp3 

id3v2 -D build/C25K-Chiptunes-w02d03-09min.mp3
id3v2 -2 \
      --TCOM "Dalezy tu_gia05.mod, MESMERiZE - ExifCleaner kg.xm" \
      --TIT2 "Week 02 Day 03 - 09 min" --TPE1 "Dalezy/MESMERiZE" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w02d03-09min.mp3
eyeD3 -2 -n 6 -N 42 build/C25K-Chiptunes-w02d03-09min.mp3
