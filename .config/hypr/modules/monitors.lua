---   [##########]
---   [ MONITORS ]
---   [##########]

-- { LAPTOP SCREEN }
hl.monitor({
	output = "desc:Chimei Innolux Corporation 0x1521",
	mode = "1920x1080@144.00301",
	position = "1920x0",
	scale = 1.2,
})

-- { AOC 27G2G4}
hl.monitor({
	output = "desc:AOC 27G1G4 0x00026952",
	mode = "1920x1080@144.00101",
	position = "0x0",
	scale = 1,
})
-- { RANDOM MONITORS }
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1,
})
