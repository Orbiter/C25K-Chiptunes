# Track 13    / w05d01 [15] -> run  5 - walk 3 - run 5 - walk 3 - run 5
# Track 14    / w05d02 [16] -> run  8 - walk 5 - run 8
# Track 15    / w05d03 [20] -> run 20

# clean up
rm -f build/C25K-Chiptunes-w05d01-15min.mp3 
rm -f build/C25K-Chiptunes-w05d02-16min.mp3 
rm -f build/C25K-Chiptunes-w05d03-20min.mp3 

# transcode walking audio in week 5 - the source is too short, so we repeat it three times, then cut it:
ffmpeg -y -i "music/keygen-music/music/TSRh/TSRh - Magic Utilities 2006 4.21 kg.xm" -ar 44100 temp/w05-walking-raw.wav
sox temp/w05-walking-raw.wav temp/w05-walking-raw.wav temp/w05-walking-raw.wav temp/w05-walking-raw.wav temp/w05-walking-big.wav
ffmpeg -y -i temp/w05-walking-big.wav -ss 00:00:00.000 -t 180 -acodec copy temp/w05-walking-180.wav
ffmpeg -y -i temp/w05-walking-big.wav -ss 00:00:00.000 -t 300 -acodec copy temp/w05-walking-300.wav

# transcode run audio for day 1 in week 5
ffmpeg -y -i "music/keygen-music/music/Razor1911/Razor1911 - Diablo 2 intro.mod" -ar 44100 temp/w05d01-running-raw.wav
sox temp/w05d01-running-raw.wav temp/w05d01-running-raw.wav temp/w05d01-running-raw.wav temp/w05d01-running-raw.wav temp/w05d01-running-big.wav
ffmpeg -y -i temp/w05d01-running-big.wav -ss 00:00:00.000 -t 300 -acodec copy temp/w05d01-running-300.wav
sox \
    tts/week/week05.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w05d01-intro.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w05d01-running-300.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w05-walking-180.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w05d01-running-300.wav effect/introbeep.wav tts/walk/walk3minutes.wav temp/w05-walking-180.wav \
    effect/introbeep.wav tts/run/run5minutes.wav temp/w05d01-running-300.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w05d01-15min.mp3 

id3v2 -D build/C25K-Chiptunes-w05d01-15min.mp3
id3v2 -2 \
      --TCOM "TSRh - Magic Utilities 2006 4.21 kg.xm, Razor1911 - Diablo 2 intro.mod" \
      --TIT2 "Week 05 Day 01 - 15 min" --TPE1 "TSRh/Razor1911" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w05d01-15min.mp3
eyeD3 -2 -n 13 -N 42 build/C25K-Chiptunes-w05d01-15min.mp3


# transcode run audio for day 2 in week 5
ffmpeg -y -i "music/keygen-music/music/SnD/SnD - IncrediMail for Office Generic crk 1.5.xm" -ar 44100 temp/w05d02-running-raw.wav
sox temp/w05d02-running-raw.wav temp/w05d02-running-raw.wav temp/w05d02-running-raw.wav temp/w05d02-running-raw.wav temp/w05d02-running-raw.wav temp/w05d02-running-raw.wav temp/w05d02-running-big.wav
ffmpeg -y -i temp/w05d02-running-big.wav -ss 00:00:00.000 -t 480 -acodec copy temp/w05d02-running-480.wav
sox \
    tts/week/week05.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w05d02-intro.wav \
    effect/introbeep.wav tts/run/run8minutes.wav temp/w05d02-running-480.wav effect/introbeep.wav tts/walk/walk5minutes.wav temp/w05-walking-300.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run8minutes.wav temp/w05d02-running-480.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w05d02-16min.mp3 

id3v2 -D build/C25K-Chiptunes-w05d02-16min.mp3
id3v2 -2 \
      --TCOM "TSRh - Magic Utilities 2006 4.21 kg.xm, SnD - IncrediMail for Office Generic crk 1.5.xm" \
      --TIT2 "Week 05 Day 02 - 16 min" --TPE1 "TSRh/SnD" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w05d02-16min.mp3
eyeD3 -2 -n 14 -N 42 build/C25K-Chiptunes-w05d02-16min.mp3


# transcode run audio for day 3 in week 5
ffmpeg -y -i "music/keygen-music/music/TSRh/TSRh - WinImage 8.0 kg.xm" -ar 44100 temp/w05d03-running-raw.wav
sox temp/w05d03-running-raw.wav temp/w05d03-running-raw.wav temp/w05d03-running-raw.wav temp/w05d03-running-raw.wav temp/w05d03-running-raw.wav temp/w05d03-running-raw.wav temp/w05d03-running-raw.wav temp/w05d03-running-raw.wav temp/w05d03-running-big.wav
ffmpeg -y -i temp/w05d03-running-big.wav -ss 00:00:00.000 -t 600 -acodec copy temp/w05d03-running-600.wav
sox \
    tts/week/week05.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w05d03-intro.wav \
    effect/introbeep.wav tts/run/run20minutes.wav \
    temp/w05d03-running-600.wav tts/say/secondhalf.wav temp/w05d03-running-600.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w05d03-20min.mp3 

id3v2 -D build/C25K-Chiptunes-w05d03-20min.mp3
id3v2 -2 \
      --TCOM "TSRh - Magic Utilities 2006 4.21 kg.xm, TSRh - WinImage 8.0 kg.xm" \
      --TIT2 "Week 05 Day 03 - 20 min" --TPE1 "TSRh/TSRh" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w05d03-20min.mp3
eyeD3 -2 -n 15 -N 42 build/C25K-Chiptunes-w05d03-20min.mp3
