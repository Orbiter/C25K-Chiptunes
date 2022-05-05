# Track 01-03 / w01   [08] -> repeat 8x: run 1 - walk 1.5

# clean up
rm -Rf temp
rm -Rf build
mkdir -p build
mkdir -p temp

# prepare warmup and gohome - this will be used in all weeks
ffmpeg -n -i "music/keygen-music/music/AGAiN/AGAiN - FairStars MP3 Recorder kg.xm" -ar 44100 temp/warmup-raw.wav
sox temp/warmup-raw.wav temp/warmup-raw.wav temp/warmup-raw.wav temp/warmup-raw3.wav
ffmpeg -n -i temp/warmup-raw3.wav -ss 00:00:00.000 -t 180 -acodec copy temp/warmup.wav
ffmpeg -n -i "music/keygen-music/music/AiR/AiR - Propellerheads Reason 2002-2010 kg.xm" -ar 44100 temp/gohome.wav

# transcode walking audio for week 1; this is too long and must be shortened:
ffmpeg -n -i "music/keygen-music/music/TSRh/TSRh - onOne Perfect Effects 3.0.2 kg.xm" -ar 44100 temp/w01-walking-raw.wav
ffmpeg -n -i temp/w01-walking-raw.wav -ss 00:00:22.000 -t 90 -acodec copy temp/w01-walking.wav

# transcode run audio for day 1 in week 1
ffmpeg -n -i "music/keygen-music/music/ORiON/ORiON - Nero Burning ROM (2001).xm" -ar 44100 temp/w01d01-running.wav
sox \
    tts/week/week01.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w01-intro.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d01-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d01-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d01-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d01-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run60seconds.wav temp/w01d01-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d01-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d01-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d01-running.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w01d01-08min.mp3 

id3v2 -D build/C25K-Chiptunes-w01d01-08min.mp3
id3v2 -2 \
      --TCOM "TSRh - onOne Perfect Effects 3.0.2 kg.xm, ORiON - Nero Burning ROM (2001).xm" \
      --TIT2 "Week 01 Day 01 - 08 min" --TPE1 "TSRh/ORiON" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w01d01-08min.mp3
eyeD3 -2 -n 1 -N 42 build/C25K-Chiptunes-w01d01-08min.mp3


# transcode run audio for day 2 in week 1
ffmpeg -n -i "music/web/Canterwood - Hex Workshop v4.22kg.xm" -ar 44100 temp/w01d02-running.wav
sox \
    tts/week/week01.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w01-intro.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d02-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d02-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d02-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d02-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run60seconds.wav temp/w01d02-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d02-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d02-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d02-running.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w01d02-08min.mp3 

id3v2 -D build/C25K-Chiptunes-w01d02-08min.mp3
id3v2 -2 \
      --TCOM "TSRh - onOne Perfect Effects 3.0.2 kg.xm, Canterwood - Hex Workshop v4.22kg.xm" \
      --TIT2 "Week 01 Day 02 - 08 min" --TPE1 "TSRh/Canterwood" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w01d02-08min.mp3
eyeD3 -2 -n 2 -N 42 build/C25K-Chiptunes-w01d02-08min.mp3

# transcode run audio for day 3 in week 1
ffmpeg -n -i "music/keygen-music/music/ORiON/ORiON - Nero 6.3.1.6.xm" -ar 44100 temp/w01d03-running.wav
sox \
    tts/week/week01.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w01-intro.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d03-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d03-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d03-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d03-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run60seconds.wav temp/w01d03-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d03-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d03-running.wav effect/introbeep.wav tts/walk/walk90seconds.wav temp/w01-walking.wav \
    effect/introbeep.wav tts/run/run60seconds.wav temp/w01d03-running.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w01d03-08min.mp3 

id3v2 -D build/C25K-Chiptunes-w01d03-08min.mp3
id3v2 -2 \
      --TCOM "TSRh - onOne Perfect Effects 3.0.2 kg.xm, ORiON - Nero 6.3.1.6.xm" \
      --TIT2 "Week 01 Day 03 - 08 min" --TPE1 "TSRh/ORiON" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w01d03-08min.mp3
eyeD3 -2 -n 3 -N 42 build/C25K-Chiptunes-w01d03-08min.mp3
