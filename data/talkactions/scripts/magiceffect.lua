function onSay(cid, words, param)
	if isPlayer(cid) and param ~= "" and getPlayerAccess(cid) > 0 then
		doSendMagicEffect(getCreaturePosition(cid), param)
	end
end