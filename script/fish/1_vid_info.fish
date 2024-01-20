set --local dir (basename (pwd))
yt-dlp --flat-playlist "https://www.youtube.com/@$dir" -j | jq --sort-keys '.id' > videos.txt
