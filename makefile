love:
	cp -r src/* build/MusicStory
	rm -rf build/MusicStory/*/.git
	cd build/MusicStory/; zip -9 -r ../MusicStory.love .

win32:
	make love
	cat build/love32/love.exe build/MusicStory.love > build/MusicStory32.exe
	mkdir -p release/MusicStory32/
	cp build/MusicStory32.exe release/MusicStory32/.
	cp build/love32/*.dll release/MusicStory32/
	cp build/love32/*.txt release/MusicStory32/
	cd release/MusicStory32/; zip -9 -r ../MusicStory32.zip .

win64:
	make love
	cat build/love64/love.exe build/MusicStory.love > build/MusicStory64.exe
	mkdir -p release/MusicStory64/
	cp build/MusicStory64.exe release/MusicStory64/.
	cp build/love64/*.dll release/MusicStory64/
	cp build/love64/*.txt release/MusicStory64/
	cd release/MusicStory64/; zip -9 -r ../MusicStory64.zip .
