--PLAYER FRAME
PlayerFrame:SetMovable(true)
PlayerFrame:ClearAllPoints()
PlayerFrame:SetPoint("CENTER", UIParent, "CENTER", -200, -200)
PlayerFrame:SetUserPlaced(true)
PlayerFrame:SetMovable(false)

PlayerFrameHealthBarText:SetAlpha(0)
PlayerFrameManaBarText:SetAlpha(0)
--PlayerFrameGroupIndicator:Hide()
RegisterAttributeDriver(PlayerFrameGroupIndicator, "state-visibility", "hide")

CastingBarFrame:ClearAllPoints()
CastingBarFrame:SetPoint("CENTER",UIParent,"CENTER",0,-415)
CastingBarFrame.SetPoint=function() end
CastingBarFrame:SetScale(0.8)

--PET FRAME
PetFrameHealthBarText:SetAlpha(0)
PetFrameManaBarText:SetAlpha(0)

--TARGET FRAME
TargetFrame:SetMovable(true)
TargetFrame:ClearAllPoints()
TargetFrame:SetPoint("CENTER",UIParent,"CENTER",200,-200)
TargetFrame:SetUserPlaced(true)
TargetFrame:SetMovable(false)

TargetFrameToT:SetMovable(true)
TargetFrameToT:ClearAllPoints()
TargetFrameToT:SetPoint("CENTER", UIParent, "CENTER", 250, -240)
TargetFrameToT:SetUserPlaced(true)
TargetFrameToT:SetMovable(false)

TargetFrameTextureFramePVPIcon:SetAlpha(0)

--FOCUS FRAME
FocusFrame:SetMovable(true)
FocusFrame:ClearAllPoints()
FocusFrame:SetPoint("CENTER",UIParent,"CENTER",480,-85)
FocusFrame:SetUserPlaced(true)
FocusFrame:SetMovable(false)
FocusFrame:SetScale(0.8)
FocusFrameSpellBar:SetScale(1.2)

FocusFrameToT:SetMovable(true)
FocusFrameToT:ClearAllPoints()
FocusFrameToT:SetPoint("CENTER", UIParent,"CENTER",520,-125)
FocusFrameToT:SetUserPlaced(true)
FocusFrameToT:SetMovable(false)

FocusFrameTextureFramePVPIcon:SetAlpha(0)

--ARENAFRAMES
LoadAddOn("Blizzard_ArenaUI")
ArenaEnemyFrame1:ClearAllPoints()
ArenaEnemyFrame1:SetPoint("CENTER",UIParent,"CENTER",310,195)
ArenaEnemyFrame1.SetPoint = function() end
ArenaEnemyFrame2:ClearAllPoints()
ArenaEnemyFrame2:SetPoint("CENTER",UIParent,"CENTER",310,150)
ArenaEnemyFrame2.SetPoint = function() end
ArenaEnemyFrame3:ClearAllPoints()
ArenaEnemyFrame3:SetPoint("CENTER",UIParent,"CENTER",310,105)
ArenaEnemyFrame3.SetPoint = function() end

ArenaEnemyFrame1CastingBar:ClearAllPoints()
ArenaEnemyFrame1CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,195)
ArenaEnemyFrame1CastingBar.SetPoint = function() end
ArenaEnemyFrame2CastingBar:ClearAllPoints()
ArenaEnemyFrame2CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,150)
ArenaEnemyFrame2CastingBar.SetPoint = function() end
ArenaEnemyFrame3CastingBar:ClearAllPoints()
ArenaEnemyFrame3CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,105)
ArenaEnemyFrame3CastingBar.SetPoint = function() end

-- 1 2 3 4 5 on arena nameplates
  hooksecurefunc("CompactUnitFrame_UpdateName",function(F)
    if IsActiveBattlefieldArena()and F.unit:find("nameplate") then
      for i=1,5 do
        if UnitIsUnit(F.unit,"arena"..i) then
          F.name:SetText(i)
        break
      end
    end
  end
end)

--VARIOUS ELEMENTS
MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()

UIErrorsFrame:ClearAllPoints()
UIErrorsFrame:SetPoint("CENTER",UIParent,"CENTER",0,550)
UIErrorsFrame:SetScale(0.7)
--UIErrorsFrame:SetAlpha(0)

--FORM/STANCE
StanceBarFrame:ClearAllPoints()
--StanceBarFrame:SetPoint("TOPLEFT",320,155)
StanceBarFrame:SetPoint("TOPLEFT",PlayerFrame,"BOTTOMLEFT",30,10)
StanceBarFrame.SetPoint = function() end
if (UnitClass("PLAYER") == "Druid") then
  RegisterAttributeDriver(StanceBarFrame, "state-visibility", "hide")
end

--TOTEMBAR
MultiCastActionBarFrame:ClearAllPoints()
MultiCastActionBarFrame:SetPoint("TOPLEFT",MainMenuBar,"BOTTOMRIGHT",0,0)
--MultiCastActionBarFrame:SetPoint("CENTER",-230,-54)
--MultiCastActionBarFrame.SetPoint = function() end

--FIX TOTEM ORDER
TotemFrameTotem3:ClearAllPoints()
TotemFrameTotem3:SetPoint("TOPLEFT",TotemFrame,"TOPLEFT",0,0)
TotemFrameTotem2:ClearAllPoints()
TotemFrameTotem2:SetPoint("TOPLEFT",TotemFrameTotem4,"TOPRIGHT",-4,0)
TotemFrameTotem1:ClearAllPoints()
TotemFrameTotem1:SetPoint("TOPLEFT",TotemFrameTotem2,"TOPRIGHT",-4,0)

--RUNEBAR 3 X 2
Rune5:ClearAllPoints()
Rune5:SetPoint("BOTTOMRIGHT",PlayerFrame,"TOPRIGHT",-35,0)
Rune3:ClearAllPoints()
Rune3:SetPoint("BOTTOMLEFT",Rune5,"TOPLEFT",0,5)
Rune1:ClearAllPoints()
Rune1:SetPoint("BOTTOMLEFT",Rune3,"TOPLEFT",0,5)
RuneFrame:SetScale(2)

MultiBarBottomLeft:ClearAllPoints()
MultiBarBottomLeft:SetPoint("TOPLEFT",8,-8)
MultiBarBottomRight:ClearAllPoints()
MultiBarBottomRight:SetPoint("TOPLEFT",512,30)