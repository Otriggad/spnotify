-- Uses text to speech to notify user of currently playing track and its artist --
global currTrack, fetchedTrack

set currTrack to ""
--set oldDelims to AppleScript's text item delimiters

set currentlyPlayingTrack to getCurrentlyPlayingTrack()
currentlyPlayingTrack

-- Method to get the currently playing track
on getCurrentlyPlayingTrack()
	repeat until application "Spotify" is not running
		tell application "Spotify"
			set currentArtist to artist of current track as string
			set currentTrack to name of current track as string	
			set fetchedTrack to currentTrack & " by " & currentArtist
			set unTrimmed to fetchedTrack
		end tell
		
		-- Remove non supported characters for text to speech -- 
		if currTrack is not equal to unTrimmed then
			trimUnwantedSymbols()
			tell application "Spotify"
				if player state is playing then
					playpause
				end if
				do shell script "say " & fetchedTrack & " &"
				set currTrack to unTrimmed
				delay 1
				if player state is paused then
					playpause
				end if
			end tell
		end if
	end repeat
end getCurrentlyPlayingTrack


-- Finds substring in string and replaces it with new string --
on findAndReplace(tofind, toreplace, TheString)
	set ditd to text item delimiters
	set text item delimiters to tofind
	set textItems to text items of TheString
	set text item delimiters to toreplace
	if (class of TheString is string) then
		set res to textItems as string
	else -- if (class of TheString is Unicode text) then
		set res to textItems as Unicode text
	end if
	set text item delimiters to ditd
	return res
end findAndReplace


on trimUnwantedSymbols()
	if "'" is in fetchedTrack then
		set fetchedTrack to findAndReplace("'", "\\'", fetchedTrack)
	end if
	
	if "\"" is in fetchedTrack then
		set fetchedTrack to findAndReplace("\"", " ", fetchedTrack)
	end if
	
	if "(" is in fetchedTrack then
		set fetchedTrack to findAndReplace("(", " ", fetchedTrack)
	end if
	
	if ")" is in fetchedTrack then
		set fetchedTrack to findAndReplace(")", " ", fetchedTrack)
	end if
end trimUnwantedSymbols