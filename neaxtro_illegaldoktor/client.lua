local alan2 = createPickup ( -2439.5791015625, -2717.134765625, 7.9559020996094, 3, 1240 )
ped = createPed(70, -2439.5341796875, -2716.4609375, 8.0253372192383)
setElementRotation(ped,0,0, 170.79333496094)

setElementInterior(alan2, 0)
setElementDimension(alan2, 0)



addEventHandler( "onClientRender", root, function (  )
       local x, y, z = getElementPosition( alan2 )
       local Mx, My, Mz = getCameraMatrix(   )
        if ( getDistanceBetweenPoints3D( x, y, z, Mx, My, Mz ) <= 30 ) then
           local WorldPositionX, WorldPositionY = getScreenFromWorldPosition( x, y, z +0.4, 0.07 )
            if ( WorldPositionX and WorldPositionY ) then
			    dxDrawText("/tedaviol", WorldPositionX - 1, WorldPositionY - 1, WorldPositionX - 1, WorldPositionY - 1, tocolor(0, 0, 0, 255), 1.5, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("/tedaviol", WorldPositionX + 1, WorldPositionY - 1, WorldPositionX + 1, WorldPositionY - 1, tocolor(0, 0, 0, 255), 1.5, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("/tedaviol", WorldPositionX - 1, WorldPositionY + 1, WorldPositionX - 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 1.5, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("/tedaviol", WorldPositionX + 1, WorldPositionY + 1, WorldPositionX + 1, WorldPositionY + 1, tocolor(0, 0, 0, 255), 1.5, "default-bold", "center", "center", false, false, false, false, false)
			    dxDrawText("/tedaviol", WorldPositionX, WorldPositionY, WorldPositionX, WorldPositionY, tocolor(255, 50, 50, 255), 1.5, "default-bold", "center", "center", false, false, false, false, false)
            end
      end
end 
)