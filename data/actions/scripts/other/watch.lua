function onUse(cid, item, fromPosition, itemEx, toPosition)
	local twentyfour = true
	local tibiantime = true
	if not tibiantime then
		if twentyfour then
			time = os.date('%H:%M')
		else
			time = os.date('%I:%M %p')
		end
	else
		varh = (os.date('%M') * 60 + os.date('%S')) / 150
		tibH = math.floor(varh)
		tibM = math.floor(60 * (varh-tibH))
		if tibH < 10 then tibH = '0'..tibH end
		if tibM < 10 then tibM = '0'..tibM end
		time = (tibH..':'..tibM)
	end
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'The time is ' ..time.. '.')
	return true
end