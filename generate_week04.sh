# Track 10-12 / w04   [16] -> run  3 - walk 1.5 - run 5 - walk 2.5 - run 3 - walk 1.5 - run 5

# clean up
rm -f build/C25K-Chiptunes-w04d01-16min.mp3 
rm -f build/C25K-Chiptunes-w04d02-16min.mp3 
rm -f build/C25K-Chiptunes-w04d03-16min.mp3 

# transcode walking audio in week 4 - the source is too short, so we repeat it three times, then cut it:
ffmpeg -y -i "music/keygen-music/music/TSRh/TSRh - 3DMark05 kg.xm" -ar 44100 temp/w04-walking-raw.wav
sox temp/w04-walking-raw.wav temp/w04-walking-raw.wav temp/w04-walking-raw.wav temp/w04-walking-big.wav
ffmpeg -y -i temp/w04-walking-big.wav -ss 00:00:00.000 -t 90 -acodec copy temp/w04-walking-90.wav
ffmpeg -y -i temp/w04-walking-big.wav -ss 00:00:00.000 -t 150 -acodec copy temp/w04-walking-150.wav

# transcode run audio for day 1 in week 4
ffmpeg -y -i "music/keygen-music/music/CORE/CORE - Pivot Pro 7.68 kg.xm" -ar 44100 temp/w04d01-running-raw.wav
sox temp/w04d01-running-raw.wav temp/w04d01-running-raw.wav temp/w04d01-running-raw.wav temp/w04d01-running-raw.wav temp/w04d01-running-raw.wav temp/w04d01-running-300.wav
ffmpeg -y -i temp/w04d01-running-300.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w04d01-running-180.wav
sox \
    tts/week/week04.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w04-intro.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w04d01-running-180.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w04-walking-90.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w04d01-running-300.wav effect/introbeep.wav tts/walk/walk2p5minutes.wav temp/w04-walking-150.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run3minutes.wav temp/w04d01-running-180.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w04-walking-90.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w04d01-running-300.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w04d01-16min.mp3 

id3v2 -D build/C25K-Chiptunes-w04d01-16min.mp3
id3v2 -2 \
      --TCOM "TSRh - 3DMark05 kg.xm, CORE - Pivot Pro 7.68 kg.xm" \
      --TIT2 "Week 04 Day 01 - 16 min" --TPE1 "TSRh/CORE" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w04d01-16min.mp3
eyeD3 -2 -n 10 -N 42 build/C25K-Chiptunes-w04d01-16min.mp3


# transcode run audio for day 2 in week 4
ffmpeg -y -i "music/keygen-music/music/TSRh/TSRh - Naturpic Audio File Cutter 3.20 kg.xm" -ar 44100 temp/w04d02-running-raw.wav
sox temp/w04d02-running-raw.wav temp/w04d02-running-raw.wav temp/w04d02-running-raw.wav temp/w04d02-running-raw.wav temp/w04d02-running-raw.wav temp/w04d02-running-big.wav
ffmpeg -y -i temp/w04d02-running-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w04d02-running-180.wav
ffmpeg -y -i temp/w04d02-running-big.wav -ss 00:00:00.000 -t 300 -acodec copy temp/w04d02-running-300.wav
sox \
    tts/week/week04.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w04-intro.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w04d02-running-180.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w04-walking-90.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w04d02-running-300.wav effect/introbeep.wav tts/walk/walk2p5minutes.wav temp/w04-walking-150.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run3minutes.wav temp/w04d02-running-180.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w04-walking-90.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w04d02-running-300.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w04d02-16min.mp3 

id3v2 -D build/C25K-Chiptunes-w04d02-16min.mp3
id3v2 -2 \
      --TCOM "TSRh - 3DMark05 kg.xm, TSRh - Naturpic Audio File Cutter 3.20 kg.xm" \
      --TIT2 "Week 04 Day 02 - 16 min" --TPE1 "TSRh/TSRh" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w04d02-16min.mp3
eyeD3 -2 -n 11 -N 42 build/C25K-Chiptunes-w04d02-16min.mp3


# transcode run audio for day 3 in week 4
ffmpeg -y -i "music/keygen-music/music/TSRh/TSRh - Salfield Software Products kg.xm" -ar 44100 temp/w04d03-running-raw.wav
sox temp/w04d03-running-raw.wav temp/w04d03-running-raw.wav temp/w04d03-running-raw.wav temp/w04d03-running-raw.wav temp/w04d03-running-raw.wav temp/w04d03-running-big.wav
ffmpeg -y -i temp/w04d03-running-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w04d03-running-180.wav
ffmpeg -y -i temp/w04d03-running-big.wav -ss 00:00:00.000 -t 300 -acodec copy temp/w04d03-running-300.wav
sox \
    tts/week/week04.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w04-intro.wav \
    effect/introbeep.wav tts/run/run3minutes.wav temp/w04d03-running-180.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w04-walking-90.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w04d03-running-300.wav effect/introbeep.wav tts/walk/walk2p5minutes.wav temp/w04-walking-150.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run3minutes.wav temp/w04d03-running-180.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w04-walking-90.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w04d03-running-300.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w04d03-16min.mp3 

id3v2 -D build/C25K-Chiptunes-w04d03-16min.mp3
id3v2 -2 \
      --TCOM "TSRh - 3DMark05 kg.xm, TSRh - Salfield Software Products kg.xm" \
      --TIT2 "Week 04 Day 03 - 16 min" --TPE1 "TSRh/TSRh" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w04d03-16min.mp3
eyeD3 -2 -n 12 -N 42 build/C25K-Chiptunes-w04d03-16min.mp3


