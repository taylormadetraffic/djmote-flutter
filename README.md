# TAM Flutter
#### Basic WebView wrapper for all TAM Groups

# Building
- simply replace the contents of `.env` with the .env.[brand] you want to build
- then `flutter run` or `flutter run --release`

## Launching Options
- [x] Load startup Url embedded from .env when built  
- [ ] Load Exact url passed from Push Notification Link
- [ ] Load Exact url passed from Deep Link?
- OnLoad WebView always adds query parameters `appPlatform` (for client controls), `paddingTop` & `paddingBottom` (for safearea).


#### QUESTIONS:
1. **What can the WebApp *not* do while running inside of WebView browser?** 
2. What are the benefits of [flutter_inappwebview](https://github.com/pichillilorenzo/flutter_inappwebview)?
3. Can Flutter open and play youtube videos using the installed *Youtube Music* app? 
4. Can Webview browser Audio play when:
    - [ ] App has been sent to the background?
    - [ ] Device is locked?
5. Can native audio playback continue when:
   - [ ] App is in the background?
   - [ ] Device is locked?
6. What might cause the session token in LocalStorage to be deleted from Webview Browsers?


## Test Audio Playback:
#### Go to: [/group/9/playlists/8278/tracks/9504](https://pickupmvp.com/group/9/playlists/8278/tracks/9504)
1.  Open Context Menu and click **"Play TaMP3"** 
- This will send a `GET` to `https://api.trackauthoritymusic.com/media/stream/4852/sample` for streamed mp3 and the music should start.
- [ ] Does the music continue when you go to another app?
- [ ] Does the music continue when you lock the phone?
----
2.  Open Context Menu and click **"Play Youtube"**
- This will load `https://www.youtube.com/watch?v=R4GLAKEjU4w` using ReactPlayer's youtube sdk 
- [ ] Does the music continue when you go to another app?
- [ ] Does the music continue when you lock the phone?