for vid in (cat videos.txt)
  mkdir -p -- "$vid/flags"

  if test -e "$vid/flags/1_downloaded"
    echo -- "$vid" done
  else
    echo -- "$vid" starting
    cd -- "$vid";

    set --local url "https://www.youtube.com/watch?v=$vid";
    yt-dlp --audio-quality 0 --extract-audio --output "audio" -- "$url";
    and echo yes > flags/1_downloaded

    cd ..
    echo -- "$dir" done
  end
end
