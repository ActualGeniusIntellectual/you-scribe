for vid in (cat videos.txt)

  if test -e "$vid/flags/2_whisper"
    echo -- "$vid" 'done'
  else
    cd -- "$vid"
    
    echo -- "$vid" 'started'
    whisper --model medium.en --threads 16 --device cuda --verbose True --task transcribe --language en --output_format all -- audio.opus;
    and echo yes > flags/2_whisper    
    echo -- "$vid" 'done'

    cd ..
  end
end
