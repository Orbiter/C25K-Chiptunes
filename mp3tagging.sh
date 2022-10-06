
id3v2 -D   build/C25K-Playlist-w01d01-08min.mp3

# Titel / 1. Spalte [3. Pfadelement]
id3v2 -2 --TIT2 "w01d01-08min" build/C25K-Playlist-w01d01-08min.mp3

# Album / 3. Spalte [2. Pfadelement]
id3v2 -2 --TALB "C25K-Chiptunes" build/C25K-Playlist-w01d01-08min.mp3

# Genre / 4. Spalte
id3v2 -2 --TCON "Workout" build/C25K-Playlist-w01d01-08min.mp3

# Jahr / 5. Spalte
id3v2 -2 --TYER "2022" build/C25K-Playlist-w01d01-08min.mp3

# Albumkünstler / 6. Spalte [1. Pfadelement]
id3v2 -2 --TPE2 "Orbiter" build/C25K-Playlist-w01d01-08min.mp3

# Künstler / 2. Spalte
id3v2 -2 --TPE1 "TPE1" build/C25K-Playlist-w01d01-08min.mp3

# Komponist
id3v2 -2 --TCOM "TCOM" build/C25K-Playlist-w01d01-08min.mp3

# Kommentare
id3v2 -2 --COMM "COMM" build/C25K-Playlist-w01d01-08min.mp3

eyeD3 -2 -d 1 -D 2 -n 42 -N 44 build/C25K-Playlist-w01d01-08min.mp3

# Pfad: TPE2/TALB/TIT2.mp3
