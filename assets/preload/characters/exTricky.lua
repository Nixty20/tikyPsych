function onCreate()
	makeAnimatedLuaSprite('exSpikes', 'fourth/FloorSpikes', -300, -120)
	setProperty('exSpikes.visible', false)
	addAnimationByPrefix('exSpikes', 'spike', 'Floor Spikes', 24, false)
	addLuaSprite('exSpikes', true)
	setProperty('gf.x', getProperty('gf.x') + 345)
	setProperty('gf.y', getProperty('gf.y') - 25)
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteData == 2 then
		setProperty('exSpikes.visible', true)
		objectPlayAnimation('exSpikes', 'spike', true)
	else
		setProperty('exSpikes.visible', false)
	end
end