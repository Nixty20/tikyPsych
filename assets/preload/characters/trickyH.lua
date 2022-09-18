function onCreate()
	setProperty('gf.x', getProperty('gf.x') - 380)
	if dadName == 'trickyH' then
		addCharacterToList('trickyHLeft', 'dad')
		addCharacterToList('trickyHRight', 'dad')
		addCharacterToList('trickyHUp', 'dad')
		addCharacterToList('trickyHDown', 'dad')
	elseif boyfriendName == 'trickyH' then
		addCharacterToList('trickyHLeft', 'bf')
		addCharacterToList('trickyHRight', 'bf')
		addCharacterToList('trickyHUp', 'bf')
		addCharacterToList('trickyHDown', 'bf')
	end
	setProperty('gf.scale.x', 0.8)
	setProperty('gf.scale.y', 0.8)
	setProperty('boyfriend.scale.x', 0.8)
	setProperty('boyfriend.scale.y', 0.8)
	setProperty('gf.x', getProperty('gf.x') + 220)
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if dadName == 'trickyH' or dadName == 'trickyHLeft' or dadName == 'trickyHDown' or dadName == 'trickyHUp' or dadName == 'trickyHRight' then
		if noteData == 0 then
			triggerEvent('Change Character', 'dad', 'trickyHLeft')
			triggerEvent('Play Animation', 'idle', 'dad')
			runTimer('resetidle', 0.4)
		elseif noteData == 1 then
			triggerEvent('Change Character', 'dad', 'trickyHDown')
			triggerEvent('Play Animation', 'idle', 'dad')
			runTimer('resetidle', 0.4)
		elseif noteData == 2 then
			triggerEvent('Change Character', 'dad', 'trickyHUp')
			triggerEvent('Play Animation', 'idle', 'dad')
			runTimer('resetidle', 0.4)
		elseif noteData == 3 then
			triggerEvent('Change Character', 'dad', 'trickyHRight')
			triggerEvent('Play Animation', 'idle', 'dad')
			runTimer('resetidle', 0.4)
		end
	elseif boyfriendName == 'trickyH' or boyfriendName == 'trickyHLeft' or boyfriendName == 'trickyHDown' or boyfriendName == 'trickyHUp' or boyfriendName == 'trickyHRight' then
		if noteData == 0 then
			triggerEvent('Change Character', 'dad', 'trickyHRight')
			triggerEvent('Play Animation', 'idle', 'bf')
			runTimer('resetidle', 0.4)
		elseif noteData == 1 then
			triggerEvent('Change Character', 'dad', 'trickyHDown')
			triggerEvent('Play Animation', 'idle', 'bf')
			runTimer('resetidle', 0.4)
		elseif noteData == 2 then
			triggerEvent('Change Character', 'dad', 'trickyHUp')
			triggerEvent('Play Animation', 'idle', 'bf')
			runTimer('resetidle', 0.4)
		elseif noteData == 3 then
			triggerEvent('Change Character', 'dad', 'trickyHLeft')
			triggerEvent('Play Animation', 'idle', 'bf')
			runTimer('resetidle', 0.4)
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'resetidle' then
		if dadName == 'trickyH' or dadName == 'trickyHLeft' or dadName == 'trickyHDown' or dadName == 'trickyHUp' or dadName == 'trickyHRight' then
			triggerEvent('Change Character', 'dad', 'trickyH')
		elseif boyfriendName == 'trickyH' or boyfriendName == 'trickyHLeft' or boyfriendName == 'trickyHDown' or boyfriendName == 'trickyHUp' or boyfriendName == 'trickyHRight' then
			triggerEvent('Change Character', 'bf', 'trickyH')
		end
	end
end