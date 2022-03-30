


local tedaviyeri = createColSphere ( -2439.5791015625, -2717.134765625, 7.9559020996094, 3)
local pickup = createPickup(-2439.5791015625, -2717.134765625, 7.9559020996094, 3, 1240)
setElementInterior(tedaviyeri, 0)
setElementDimension(tedaviyeri, 0)
setElementData(pickup, "informationicon:information", "/tedaviol")
setElementInterior(pickup, 0)
setElementDimension(pickup, 0)
local mysql = exports.wrp_mysql
function tedavi(thePlayer, commandName)
	if not isElementWithinColShape(thePlayer, tedaviyeri) then
	-- outputChatBox("#660000[!] #C8A0A0Bu alanda tedavi olunmuyor.",thePlayer,255,255,255,true)
	else
	outputChatBox("#1E8D0A[!] #B5D2B0Başarıyla Tedavi Oldunuz.",thePlayer,255,255,255,true)
	local dbid = getElementData(thePlayer, "dbid")
	setElementData(thePlayer, "rk", 0)
	dbExec(mysql:getConnection(), "UPDATE characters SET rk = 0 WHERE id = '" .. dbid .. "'")	
	exports.wrp_global:takeMoney(thePlayer, 10000)
		local health = 100
			setElementHealth(thePlayer , tonumber(health))
	end
end
addCommandHandler("tedaviol",tedavi)