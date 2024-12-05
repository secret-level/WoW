hooksecurefunc("UnitFramePortrait_Update", function(self)
    if self.portrait then
        if select(2,UnitClass(self.unit)) == "DRUID" then
          local i, flag=1, false
          while UnitBuff(self.unit, i) do
             local id = select(11,UnitBuff(self.unit, i))
             --768 (Cat Form)  783(Travel Form) 1066 (Aquatic Form) 9634 (Dire Bear Form) 24858 (Moonkin Form) 33891 (Tree of Life) 33943 (Flight Form) 40120 (Swift Flight Form)
             if id == 768 or id == 783 or id == 1066 or id == 9634 or id == 24858 or id == 33891 or id == 33943 or id == 40120 then
               SetPortraitToTexture(self.portrait, GetSpellTexture(id));
               self.portrait:SetTexCoord(0, 1, 0, 1)
               flag = true
             end
             i = i + 1
           end
          if not flag then
             self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
             self.portrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS .DRUID))
         end
       else
         local t = CLASS_ICON_TCOORDS [select(2,UnitClass(self.unit))]
             if t then self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
             self.portrait:SetTexCoord(unpack(t))
         end
       end
    end
end)


--playerframe
local function ScrewYouPlayerFrame()
	PlayerFrame:ClearAllPoints()
	PlayerFrame:SetPoint("CENTER",UIParent,"CENTER",-200,-200)
end
hooksecurefunc("PlayerFrame_AnimateOut", function() PlayerFrame:SetAlpha(0); ScrewYouPlayerFrame() end)
hooksecurefunc("PlayerFrame_SequenceFinished", function() PlayerFrame:SetAlpha(1); ScrewYouPlayerFrame() end)
hooksecurefunc("PlayerFrame_UpdateStatus", ScrewYouPlayerFrame)

CastingBarFrame:ClearAllPoints()
CastingBarFrame:SetPoint("CENTER",UIParent,"CENTER",0,-330)
CastingBarFrame.SetPoint=function() end

PlayerFrameHealthBarText:SetAlpha(0)
PlayerFrameManaBarText:SetAlpha(0)
PlayerFrameGroupIndicator:SetAlpha(0)
PlayerPVPIcon:SetAlpha(0)

--targetframe
TargetFrame:ClearAllPoints()
TargetFrame:SetPoint("CENTER",UIParent,"CENTER",200,-200)

TargetFrameToT:ClearAllPoints()
TargetFrameToT:SetPoint("CENTER",TargetFrame,"CENTER",54,-38)

-- was this really needed to be this complicated, or is SetPoint=function() end fine?
--TargetFrameSpellBar:SetScript("OnShow",nil)
--Target_Spellbar_AdjustPosition=function() end
--TargetFrameSpellBar:SetParent(UIParent)
--TargetFrameSpellBar:ClearAllPoints()
--TargetFrameSpellBar:SetPoint("CENTER",UIParent,"CENTER",185,-100)

TargetFrameSpellBar:ClearAllPoints()
TargetFrameSpellBar:SetPoint("CENTER",UIParent,"CENTER",185,-105)
TargetFrameSpellBar.SetPoint=function() end

TargetFrameNumericalThreat:ClearAllPoints()
TargetFrameNumericalThreat:SetPoint("TOPRIGHT",TargetFrame,"TOPLEFT",155,0)
TargetFrameTextureFramePVPIcon:SetAlpha(0)

--focusframe
local a = CreateFrame("Frame")
a:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_FOCUS_CHANGED" then
FocusFrame:ClearAllPoints()
FocusFrame:SetPoint("CENTER",UIParent,"CENTER",460,-70)
end
end)
a:RegisterEvent("PLAYER_FOCUS_CHANGED")
FocusFrame:SetScale(0.8)

FocusFrameToT:ClearAllPoints()
FocusFrameToT:SetPoint("CENTER",FocusFrame,"CENTER",54,-42)

FocusFrameSpellBar:SetScale(1.2)

FocusFrameNumericalThreat:SetScale(0.01)
FocusFrameTextureFramePVPIcon:SetAlpha(0)

--split buff debuff
hooksecurefunc("TargetFrame_UpdateAuraPositions",function(self)
  local f,g=_G["TargetFrameDebuff1"],_G["TargetFrameBuff1"]
  if f then f:ClearAllPoints() f:SetPoint("TOPLEFT",5,30)
  end
  if g then g:ClearAllPoints();g:SetPoint("BOTTOMLEFT",6,12)
  end
end)

MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()

--UIErrorsFrame:SetAlpha(0)
UIErrorsFrame:ClearAllPoints()
UIErrorsFrame:SetPoint("CENTER",UIParent,"CENTER",0,550)
UIErrorsFrame:SetScale(0.7)

--bottom bars
MultiBarBottomLeft:ClearAllPoints()
MultiBarBottomLeft:SetPoint("CENTER",-253,-358)
MultiBarBottomLeft.SetPoint = function() end
MultiBarBottomRight:ClearAllPoints()
MultiBarBottomRight:SetPoint("CENTER",251,-358)
MultiBarBottomRight.SetPoint = function() end

--petframe
PetActionBarFrame:ClearAllPoints()
PetActionBarFrame:SetPoint("BOTTOMLEFT",MainMenuBar,"BOTTOMRIGHT",-33,1)
PetActionBarFrame.SetPoint = function() end
PetActionBarFrame:SetScale(0.65)

PetFrameHealthBarText:SetAlpha(0)
PetFrameManaBarText:SetAlpha(0)

--totembar
MultiCastActionBarFrame:ClearAllPoints()
MultiCastActionBarFrame:SetPoint("BOTTOMLEFT",MainMenuBar,"BOTTOMRIGHT",0,0)
MultiCastActionBarFrame.SetPoint = function() end

--paladinauraframe
ShapeshiftBarFrame:ClearAllPoints()
ShapeshiftBarFrame:SetPoint("BOTTOMLEFT",MainMenuBar,"BOTTOMRIGHT",-10,0)
ShapeshiftBarFrame.SetPoint = function() end

--RUNEBAR 3x2
--Rune5:ClearAllPoints()
--Rune5:SetPoint("BOTTOMRIGHT",PlayerFrame,"TOPRIGHT",-35,0)
--Rune3:ClearAllPoints()
--Rune3:SetPoint("BOTTOMLEFT",Rune5,"TOPLEFT",0,5)
--Rune1:ClearAllPoints()
--Rune1:SetPoint("BOTTOMLEFT",Rune3,"TOPLEFT",0,5)
--RuneFrame:SetScale(2)

--arenaframe
local AddOn = CreateFrame("Frame")
local OnEvent = function(self, event, ...) self[event](self, event, ...) end
AddOn:SetScript("OnEvent", OnEvent)

local function PLAYER_ENTERING_WORLD()
    local _, type = GetInstanceInfo()
    if type == "arena" then
    ArenaEnemyFrame1:ClearAllPoints()
    ArenaEnemyFrame1:SetPoint("CENTER",UIParent,"CENTER",330,220)
    ArenaEnemyFrame1.SetPoint = function() end
    ArenaEnemyFrame2:ClearAllPoints()
    ArenaEnemyFrame2:SetPoint("CENTER",UIParent,"CENTER",330,175)
    ArenaEnemyFrame2.SetPoint = function() end
    ArenaEnemyFrame3:ClearAllPoints()
    ArenaEnemyFrame3:SetPoint("CENTER",UIParent,"CENTER",330,130)
    ArenaEnemyFrame3.SetPoint = function() end
--[[
    ArenaEnemyFrame1CastingBar:ClearAllPoints()
    ArenaEnemyFrame1CastingBar:SetPoint("CENTER",UIParent,"CENTER",230,210)
    ArenaEnemyFrame1CastingBar.SetPoint = function() end
    ArenaEnemyFrame2CastingBar:ClearAllPoints()
    ArenaEnemyFrame2CastingBar:SetPoint("CENTER",UIParent,"CENTER",230,165)
    ArenaEnemyFrame2CastingBar.SetPoint = function() end
    ArenaEnemyFrame3CastingBar:ClearAllPoints()
    ArenaEnemyFrame3CastingBar:SetPoint("CENTER",UIParent,"CENTER",230,120)
    ArenaEnemyFrame3CastingBar.SetPoint = function() end
]]--
    end
end

AddOn:RegisterEvent("PLAYER_ENTERING_WORLD")
AddOn["PLAYER_ENTERING_WORLD"] = PLAYER_ENTERING_WORLD

--ARENAFRAME IS THIS V1 NEEDED?
--local function PLAYER_ENTERING_WORLD()
--    local _, type = GetInstanceInfo()
--    if type == "arena" then
--    ArenaEnemyFrame1:ClearAllPoints()
--    ArenaEnemyFrame1:SetPoint("CENTER",UIParent,"CENTER",310,150)
--    ArenaEnemyFrame1.SetPoint = function() end
--    ArenaEnemyFrame2:ClearAllPoints()
--    ArenaEnemyFrame2:SetPoint("CENTER",UIParent,"CENTER",310,105)
--    ArenaEnemyFrame2.SetPoint = function() end

--    ArenaEnemyFrame1CastingBar:ClearAllPoints()
--    ArenaEnemyFrame1CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,150)
--    ArenaEnemyFrame1CastingBar.SetPoint = function() end
--    ArenaEnemyFrame2CastingBar:ClearAllPoints()
--    ArenaEnemyFrame2CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,105)
--    ArenaEnemyFrame2CastingBar.SetPoint = function() end
--    end
--end

--ARENAFRAMES OR IS THIS V2 ENOUGH?
--LoadAddOn("Blizzard_ArenaUI")
--ArenaEnemyFrame1:ClearAllPoints()
--ArenaEnemyFrame1:SetPoint("CENTER",UIParent,"CENTER",310,150)
--ArenaEnemyFrame1.SetPoint = function() end
--ArenaEnemyFrame2:ClearAllPoints()
--ArenaEnemyFrame2:SetPoint("CENTER",UIParent,"CENTER",310,105)
--ArenaEnemyFrame2.SetPoint = function() end

--ArenaEnemyFrame1CastingBar:ClearAllPoints()
--ArenaEnemyFrame1CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,150)
--ArenaEnemyFrame1CastingBar.SetPoint = function() end
--ArenaEnemyFrame2CastingBar:ClearAllPoints()
--ArenaEnemyFrame2CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,105)
--ArenaEnemyFrame2CastingBar.SetPoint = function() end

--ARENAFRAMES 3v3 coordinates
--LoadAddOn("Blizzard_ArenaUI")
--ArenaEnemyFrame1:ClearAllPoints()
--ArenaEnemyFrame1:SetPoint("CENTER",UIParent,"CENTER",310,195)
--ArenaEnemyFrame1.SetPoint = function() end
--ArenaEnemyFrame2:ClearAllPoints()
--ArenaEnemyFrame2:SetPoint("CENTER",UIParent,"CENTER",310,150)
--ArenaEnemyFrame2.SetPoint = function() end
--ArenaEnemyFrame3:ClearAllPoints()
--ArenaEnemyFrame3:SetPoint("CENTER",UIParent,"CENTER",310,105)
--ArenaEnemyFrame3.SetPoint = function() end

--ArenaEnemyFrame1CastingBar:ClearAllPoints()
--ArenaEnemyFrame1CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,195)
--ArenaEnemyFrame1CastingBar.SetPoint = function() end
--ArenaEnemyFrame2CastingBar:ClearAllPoints()
--ArenaEnemyFrame2CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,150)
--ArenaEnemyFrame2CastingBar.SetPoint = function() end
--ArenaEnemyFrame3CastingBar:ClearAllPoints()
--ArenaEnemyFrame3CastingBar:SetPoint("CENTER",UIParent,"CENTER",210,105)
--ArenaEnemyFrame3CastingBar.SetPoint = function() end

-- 1 2 3 4 5 on arena nameplates
--  hooksecurefunc("CompactUnitFrame_UpdateName",function(F)
--    if IsActiveBattlefieldArena()and F.unit:find("nameplate") then
--      for i=1,5 do
--        if UnitIsUnit(F.unit,"arena"..i) then
--          F.name:SetText(i)
--        break
--      end
--    end
--  end
--end)