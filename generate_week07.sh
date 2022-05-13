# Track 19    / w07d01 [24] -> run  7 - walk 2 - run 10 - walk 2 - run 7
# Track 20    / w07d02 [24] -> run 12 - walk 2 - run 12
# Track 21    / w07d03 [26] -> run 26

# clean up
rm -f build/C25K-Chiptunes-w07d01-24min.mp3 
rm -f build/C25K-Chiptunes-w07d02-24min.mp3 
rm -f build/C25K-Chiptunes-w07d03-26min.mp3 

# transcode walking audio in week 7 - the source has the exact length, no cutting:
ffmpeg -y -i "music/keygen-music/music/TSRh/TSRh - FlashGet 1.65 kg.xm" -ar 44100 temp/w07-walking-120.wav

# transcode run audio for day 1 in week 7
ffmpeg -y -i "music/keygen-music/music/SKiD ROW/SKiD ROW - Portal 2 launcher.xm" -ar 44100 temp/w07d01-running-raw.wav
sox temp/w07d01-running-raw.wav temp/w07d01-running-raw.wav temp/w07d01-running-raw.wav temp/w07d01-running-raw.wav temp/w07d01-running-raw.wav temp/w07d01-running-raw.wav temp/w07d01-running-big.wav
ffmpeg -y -i temp/w07d01-running-big.wav -ss 00:00:00.000 -t 420 -acodec copy temp/w07d01-running-420.wav
ffmpeg -y -i temp/w07d01-running-big.wav -ss 00:00:00.000 -t 600 -acodec copy temp/w07d01-running-600.wav
sox \
    tts/week/week07.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w07d01-intro.wav \
    effect/introbeep.wav tts/run/run7minutes.wav temp/w07d01-running-420.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w07-walking-120.wav \
    effect/introbeep.wav tts/run/run10minutes.wav temp/w07d01-running-600.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w07-walking-120.wav \
    effect/introbeep.wav tts/run/run7minutes.wav temp/w07d01-running-420.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w07d01-24min.mp3 

id3v2 -D build/C25K-Chiptunes-w07d01-24min.mp3
id3v2 -2 \
      --TCOM "TSRh - FlashGet 1.65 kg.xm, SKiD ROW - Portal 2 launcher.xm" \
      --TIT2 "Week 07 Day 01 - 24 min" --TPE1 "TSRh/SKiD ROW" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w07d01-24min.mp3
eyeD3 -2 -n 19 -N 42 build/C25K-Chiptunes-w07d01-24min.mp3

# transcode run audio for day 2 in week 7
ffmpeg -y -i "music/keygen-music/music/CORE/CORE - Winxpsilver kg.xm" -ar 44100 temp/w07d02-running-raw.wav
sox temp/w07d02-running-raw.wav temp/w07d02-running-raw.wav temp/w07d02-running-raw.wav temp/w07d02-running-raw.wav temp/w07d02-running-raw.wav temp/w07d02-running-raw.wav temp/w07d02-running-big.wav
ffmpeg -y -i temp/w07d02-running-big.wav -ss 00:00:00.000 -t 720 -acodec copy temp/w07d02-running-720.wav
sox \
    tts/week/week07.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w07d02-intro.wav \
    effect/introbeep.wav tts/run/run12minutes.wav temp/w07d02-running-720.wav effect/introbeep.wav tts/walk/walk2minutes.wav temp/w07-walking-120.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run12minutes.wav temp/w07d02-running-720.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w07d02-24min.mp3 

id3v2 -D build/C25K-Chiptunes-w07d02-24min.mp3
id3v2 -2 \
      --TCOM "TSRh - FlashGet 1.65 kg.xm, CORE - Winxpsilver kg.xm" \
      --TIT2 "Week 07 Day 02 - 24 min" --TPE1 "TSRh/CORE" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w07d02-24min.mp3
eyeD3 -2 -n 20 -N 42 build/C25K-Chiptunes-w07d02-24min.mp3


# transcode run audio for day 3 in week 7
ffmpeg -y -i "music/keygen-music/music/BRD/BRD - Teleport Pro kg.xm" -ar 44100 temp/w07d03-running-raw.wav
sox temp/w07d03-running-raw.wav temp/w07d03-running-raw.wav temp/w07d03-running-raw.wav temp/w07d03-running-raw.wav temp/w07d03-running-raw.wav temp/w07d03-running-raw.wav temp/w07d03-running-big.wav
ffmpeg -y -i temp/w07d03-running-big.wav -ss 00:00:00.000 -t 720 -acodec copy temp/w07d03-running-720.wav
sox \
    tts/week/week07.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w07d03-intro.wav \
    effect/introbeep.wav tts/run/run26minutes.wav \
    temp/w07d03-running-720.wav tts/say/secondhalf.wav temp/w07d03-running-720.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w07d03-26min.mp3 

id3v2 -D build/C25K-Chiptunes-w07d03-26min.mp3
id3v2 -2 \
      --TCOM "TSRh - FlashGet 1.65 kg.xm, BRD - Teleport Pro kg.xm" \
      --TIT2 "Week 07 Day 03 - 26 min" --TPE1 "TSRh/BRD" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w07d03-26min.mp3
eyeD3 -2 -n 21 -N 42 build/C25K-Chiptunes-w07d03-26min.mp3
