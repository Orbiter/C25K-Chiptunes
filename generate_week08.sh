# Track 22    / w08d01 [28] -> run  8 - walk 1 - run 12 - walk 1 - run 8
# Track 23    / w08d02 [28] -> run 14 - walk 1 - run 14
# Track 24    / w08d03 [30] -> run 30

# clean up
rm -f build/C25K-Chiptunes-w08d01-28min.mp3 
rm -f build/C25K-Chiptunes-w08d02-28min.mp3 
rm -f build/C25K-Chiptunes-w08d03-30min.mp3 

# transcode walking audio in week 8 - the source has the exact length, no cutting:
ffmpeg -y -i "music/keygen-music/music/AGAiN/AGAiN - TeleportPro kg.xm" -ss 00:00:00.000 -t 60 -ar 44100 temp/w08-walking-60.wav

# transcode run audio for day 1 in week 8
ffmpeg -y -i "music/keygen-music/music/DBH/DBH - Cool Notes 6.82 kg.mod" -ar 44100 temp/w08d01-running-raw.wav
sox temp/w08d01-running-raw.wav temp/w08d01-running-raw.wav temp/w08d01-running-raw.wav temp/w08d01-running-raw.wav temp/w08d01-running-raw.wav temp/w08d01-running-raw.wav temp/w08d01-running-big.wav
ffmpeg -y -i temp/w08d01-running-big.wav -ss 00:00:00.000 -t 480 -acodec copy temp/w08d01-running-480.wav
ffmpeg -y -i temp/w08d01-running-big.wav -ss 00:00:00.000 -t 720 -acodec copy temp/w08d01-running-720.wav
sox \
    tts/week/week08.wav tts/day/day01.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w08d01-intro.wav \
    effect/introbeep.wav tts/run/run8minutes.wav temp/w08d01-running-480.wav effect/introbeep.wav tts/walk/walk60seconds.wav temp/w08-walking-60.wav \
    effect/introbeep.wav tts/run/run12minutes.wav temp/w08d01-running-720.wav effect/introbeep.wav tts/walk/walk60seconds.wav temp/w08-walking-60.wav \
    effect/introbeep.wav tts/run/run8minutes.wav temp/w08d01-running-480.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w08d01-28min.mp3 

id3v2 -D build/C25K-Chiptunes-w08d01-28min.mp3
id3v2 -2 \
      --TCOM "AGAiN - TeleportPro kg.xm, DBH - Cool Notes 6.82 kg.mod" \
      --TIT2 "Week 08 Day 01 - 28 min" --TPE1 "AGAiN/DBH" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w08d01-28min.mp3
eyeD3 -2 -n 22 -N 42 build/C25K-Chiptunes-w08d01-28min.mp3

# transcode run audio for day 2 in week 8
ffmpeg -y -i "music/keygen-music/music/R2R/R2R - Image-Line kg v1.0.1.xm" -ar 44100 temp/w08d02-running-raw.wav
sox temp/w08d02-running-raw.wav temp/w08d02-running-raw.wav temp/w08d02-running-raw.wav temp/w08d02-running-raw.wav temp/w08d02-running-raw.wav temp/w08d02-running-raw.wav temp/w08d02-running-big.wav
ffmpeg -y -i temp/w08d02-running-big.wav -ss 00:00:00.000 -t 840 -acodec copy temp/w08d02-running-840.wav
sox \
    tts/week/week08.wav tts/day/day02.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w08d02-intro.wav \
    effect/introbeep.wav tts/run/run14minutes.wav temp/w08d02-running-840.wav effect/introbeep.wav tts/walk/walk60seconds.wav temp/w08-walking-60.wav \
    effect/introbeep.wav tts/say/secondhalf.wav tts/run/run14minutes.wav temp/w08d02-running-840.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w08d02-28min.mp3 

id3v2 -D build/C25K-Chiptunes-w08d02-28min.mp3
id3v2 -2 \
      --TCOM "AGAiN - TeleportPro kg.xm, R2R - Image-Line kg v1.0.1.xm" \
      --TIT2 "Week 08 Day 02 - 28 min" --TPE1 "AGAiN/R2R" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w08d02-28min.mp3
eyeD3 -2 -n 23 -N 42 build/C25K-Chiptunes-w08d02-28min.mp3


# transcode run audio for day 3 in week 8
ffmpeg -y -i "music/keygen-music/music/CORE/CORE - Power ISO 3.1 kg.xm" -ar 44100 temp/w08d03-running-raw.wav
sox temp/w08d03-running-raw.wav temp/w08d03-running-raw.wav temp/w08d03-running-raw.wav temp/w08d03-running-raw.wav temp/w08d03-running-raw.wav temp/w08d03-running-raw.wav temp/w08d03-running-big.wav
ffmpeg -y -i temp/w08d03-running-big.wav -ss 00:00:00.000 -t 900 -acodec copy temp/w08d03-running-900.wav
sox \
    tts/week/week08.wav tts/day/day03.wav tts/say/start.wav \
    temp/warmup.wav \
    tts/intro/w08d03-intro.wav \
    effect/introbeep.wav tts/run/run30minutes.wav \
    temp/w08d03-running-900.wav tts/say/secondhalf.wav temp/w08d03-running-900.wav \
    effect/introbeep.wav tts/say/finish.wav tts/say/tenminutewalk.wav \
    temp/gohome.wav \
    build/C25K-Chiptunes-w08d03-30min.mp3 

id3v2 -D build/C25K-Chiptunes-w08d03-30min.mp3
id3v2 -2 \
      --TCOM "AGAiN - TeleportPro kg.xm, CORE - Power ISO 3.1 kg.xm" \
      --TIT2 "Week 08 Day 03 - 30 min" --TPE1 "AGAiN/CORE" \
      --TPE2 "Orbiter" --TALB "C25K-Chiptunes" --TCON "Workout" --TYER "2022" \
      --COMM "generated with github.com/Orbiter/C25K-Chiptunes by @orbiterlab" \
      build/C25K-Chiptunes-w08d03-30min.mp3
eyeD3 -2 -n 24 -N 42 build/C25K-Chiptunes-w08d03-30min.mp3
