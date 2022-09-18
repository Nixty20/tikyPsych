function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Burning Note' then
			if downscroll then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_fire-downscroll');
			else
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_fire');
			end
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'Smoke');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.45');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
			if downscroll then
				setPropertyFromGroup('unspawnNotes', i, 'flipY', true);
			else
				setPropertyFromGroup('unspawnNotes', i, 'flipY', false);
			end

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Burning Note' then
		playSound('burnSound')
	end
end