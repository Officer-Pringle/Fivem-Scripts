-----------------------------------------
-- Fix Bump Map and Texture POS
-----------------------------------------
-- Code edited by Pringle to work with mutiple plates
-- Code Made by MASRPNathan-G

-- Use a upload image, use imagr, a custom domain

--- IMAGE CONFIG HERE ---
-- MAIN TEXTURES
local plate1 = "https://www.centralroleplaygaming.com/assets/plates/civ_plate.png"  -- Yellow Plate
local plate2 = "https://www.centralroleplaygaming.com/assets/plates/new_plate.png"  -- White New Plate
local plate3 = "https://www.centralroleplaygaming.com/assets/plates/fire_plate.png" -- Add Plate Description
local plate4 = "" -- Add Plate Description
local plategov = "https://www.centralroleplaygaming.com/assets/plates/govenment_plate.png" -- Government/Exempt Plate

-- Bumpmap Textures
local govbmp = "https://www.centralroleplaygaming.com/assets/plates/gov_plate_nm.png" -- Government Plate Bumpmap
-- local basebmp = "htps://www.centralroleplaygaming.com/assets/plates/base_bump.png" -- Plate 1- 4 Bumpmap   Removed with update 8/1

local bmPlate1 = "htps://www.centralroleplaygaming.com/assets/plates/base_bump.png"
local bmPlate2 = "htps://www.centralroleplaygaming.com/assets/plates/base_bump.png"
local bmPlate3 = "htps://www.centralroleplaygaming.com/assets/plates/base_bump.png"
local bmPlate4 = "htps://www.centralroleplaygaming.com/assets/plates/base_bump.png"


---------------------------------------------------------|
---- Dont Touch Below, All Config Can be Found Above ----|
---------------------------------------------------------|

local textureDic = CreateRuntimeTxd('duiTxd') -- Create custom texture dictionary


-- Plate1 --
local object1 = CreateDui(plate1, 540, 300) -- Load image into object
local handle1 = GetDuiHandle(object1) -- Gets DUI handle from object
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex1", handle1) -- Creates the texture "duiTex" in the "duiTxd" dictionary
AddReplaceTexture('vehshare', 'plate01', 'duiTxd', 'duiTex1') -- Applies "duiTex" from "duiTxd" to "plate01" from "vehshare"

-- Plate2 --
local object2 = CreateDui(plate2, 540, 300) -- Load image into object
local handle2 = GetDuiHandle(object2) -- Gets DUI handle from object
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex2", handle2) -- Creates the texture "duiTex" in the "duiTxd" dictionary
AddReplaceTexture('vehshare', 'plate02', 'duiTxd', 'duiTex2') -- Applies "duiTex" from "duiTxd" to "plate01" from "vehshare"

-- Plate3 --
local object3 = CreateDui(plate3, 540, 300) -- Load image into object
local handle3 = GetDuiHandle(object3) -- Gets DUI handle from object
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex3", handle3) -- Creates the texture "duiTex" in the "duiTxd" dictionary
AddReplaceTexture('vehshare', 'plate03', 'duiTxd', 'duiTex3') -- Applies "duiTex" from "duiTxd" to "plate01" from "vehshare"

-- Plate4 --
local object4 = CreateDui(plate4, 540, 300) -- Load image into object
local handle4 = GetDuiHandle(object4) -- Gets DUI handle from object
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex4", handle4) -- Creates the texture "duiTex" in the "duiTxd" dictionary
AddReplaceTexture('vehshare', 'plate04', 'duiTxd', 'duiTex4') -- Applies "duiTex" from "duiTxd" to "plate01" from "vehshare"

-- Plate Government --
local object5 = CreateDui(plategov, 540, 300) -- Load image into object
local handle5 = GetDuiHandle(object5) -- Gets DUI handle from object
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex5", handle5) -- Creates the texture "duiTex" in the "duiTxd" dictionary
AddReplaceTexture('vehshare', 'plate05', 'duiTxd', 'duiTex5') -- Applies "duiTex" from "duiTxd" to "plate01" from "vehshare"



--------------------------------------------
-- DONT TOUCH ------------------------------
--------------------------------------------


--[[  DEBUG

local basebmp = "https://www.centralroleplaygaming.com/assets/plates/base_bump.png"
local basebmpimg = CreateDui(basebmp, 540, 300)
local basehandle = GetDuiHandle(basebmpimg)
CreateRuntimeTextureFromDuiHandle(textureDic, "basebmp", basehandle)
AddReplaceTexture('vehshare', 'plate01_n', 'duiTxd', 'basebmp')
AddReplaceTexture('vehshare', 'plate02_n', 'duiTxd', 'basebmp')
AddReplaceTexture('vehshare', 'plate03_n', 'duiTxd', 'basebmp')
AddReplaceTexture('vehshare', 'plate04_n', 'duiTxd', 'basebmp')

]]
---------------------------------------------------------------------------------|
-------------------[[ PLATE BUMP MAPS ]] ----------------------------------------|
---------------------------------------------------------------------------------|

local PlateImage = {
    [1] = CreateDUI( bmPlate1 , 540, 300),
    [2] = CreateDUI( bmPlate2 , 540, 300),
    [3] = CreateDUI( bmPlate3 , 540, 300),
    [4] = CreateDUI( bmPlate4 , 540, 300),
}

local PlateHandle = {
    [1] = GetDuiHandle(PlateImage[1]),
    [2] = GetDuiHandle(PlateImage[2]),
    [3] = GetDuiHandle(PlateImage[3]),
    [4] = GetDuiHandle(PlateImage[4]),
}

---- Plate 1 Bumpmap
CreateRuntimeTextureFromDuiHandle(textureDic, "PlateBM1", PlateHandle[1])
AddReplaceTexture('vehshare', 'plate01_n', 'duiTxd', 'PlateBM1')
---- Plate 2 Bumpmap
CreateRuntimeTextureFromDuiHandle(textureDic, "PlateBM2", PlateHandle[2])
AddReplaceTexture('vehshare', 'plate01_n', 'duiTxd', 'PlateBM2')
---- Plate 3 Bumpmap
CreateRuntimeTextureFromDuiHandle(textureDic, "PlateBM3", PlateHandle[3])
AddReplaceTexture('vehshare', 'plate01_n', 'duiTxd', 'PlateBM3')
---- Plate 4 Bumpmap
CreateRuntimeTextureFromDuiHandle(textureDic, "PlateBM4", PlateHandle[4])
AddReplaceTexture('vehshare', 'plate01_n', 'duiTxd', 'PlateBM4')


------------ Gov Plate Normal Backing
local govbmp = "https://www.centralroleplaygaming.com/assets/plates/gov_plate_nm.png"
local govbmpimg = CreateDui(govbmp , 540, 300)
local govhandle = GetDuiHandle(govbmpimg)
CreateRuntimeTextureFromDuiHandle(textureDic, "govbump", govhandle)
AddReplaceTexture('vehshare', 'plate05_n', 'duiTxd', 'govbump')