# you-scribe

## Summary

A collection of transcriptions of youtube videos. Done using Whisper AI


## Details

I will be using [Whisper AI](https://github.com/openai/whisper) and the `medium.en` model for transcriptions

The full command invocation is as follows,

```bash
whisper --model medium.en --threads 16 --device cuda --verbose True --task transcribe --language en --output_format all -- audio.opus;
```
