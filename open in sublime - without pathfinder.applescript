
on run
	
	-- find out if path finder is installed
	set pathfinder_installed to true
	
	tell application "Sublime Text"
		activate
	end tell
	
	
	if name of me as string is "open folder in sublime" then
		set openFiles to false
	else
		set openFiles to true
	end if
	
	tell application "Finder"
		if openFiles then
			if selection is {} then
				set finderSelection to folder of the front window as string
			else
				set finderSelection to selection as alias list
			end if
		else
			set finderSelection to folder of the front window as string
		end if
	end tell
	
	st2(finderSelection)
end run

-- script was drag-and-dropped onto
on open (theList)
	st2(theList)
end open

-- open in Sublime
on st2(listOfAliases)
	tell application "Sublime Text"
		open listOfAliases
		activate
	end tell
end st2
