mkdir -p say
say --data-format=LEI16@44100 --channels=2 -v Daniel "We start our workout with a three-minute walk." -o say/start.wav
say --data-format=LEI16@44100 --channels=2 -v Daniel "Workout finished." -o say/finish.wav
say --data-format=LEI16@44100 --channels=2 -v Daniel "Walk or run home, here is a song for ten minutes." -o say/tenminutewalk.wav
say --data-format=LEI16@44100 --channels=2 -v Daniel "Run." -o say/run.wav
say --data-format=LEI16@44100 --channels=2 -v Daniel "Walk." -o say/walk.wav
say --data-format=LEI16@44100 --channels=2 -v Daniel "Second half." -o say/secondhalf.wav

