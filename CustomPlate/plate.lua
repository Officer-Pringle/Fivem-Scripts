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
local basebmp = "htps://www.centralroleplaygaming.com/assets/plates/base_bump.png" -- Plate 1- 4 Bumpmap




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


------------ All PLate normal Backing

local basebmp = "https://www.centralroleplaygaming.com/assets/plates/base_bump.png"
local basebmpimg = CreateDui(basebmp, 540, 300)
local basehandle = GetDuiHandle(basebmpimg)
CreateRuntimeTextureFromDuiHandle(textureDic, "basebmp", basehandle)
AddReplaceTexture('vehshare', 'plate01_n', 'duiTxd', 'basebmp')
AddReplaceTexture('vehshare', 'plate02_n', 'duiTxd', 'basebmp')
AddReplaceTexture('vehshare', 'plate03_n', 'duiTxd', 'basebmp')
AddReplaceTexture('vehshare', 'plate04_n', 'duiTxd', 'basebmp')





------------ Gov Plate Normal Backing
local govbmp = "https://www.centralroleplaygaming.com/assets/plates/gov_plate_nm.png"
local govbmpimg = CreateDui(govbmp , 540, 300)
local govhandle = GetDuiHandle(govbmpimg)
CreateRuntimeTextureFromDuiHandle(textureDic, "govbump", govhandle)
AddReplaceTexture('vehshare', 'plate05_n', 'duiTxd', 'govbump')