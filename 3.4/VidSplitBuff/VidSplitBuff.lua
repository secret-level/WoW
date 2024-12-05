hooksecurefunc("TargetFrame_UpdateAuraPositions",function(self)
	if TargetFrameDebuff1 then
		TargetFrameDebuff1:ClearAllPoints()
		TargetFrameDebuff1:SetPoint("TOPLEFT",5,30)
	end
	if TargetFrameBuff1 then
		TargetFrameBuff1:ClearAllPoints()
		TargetFrameBuff1:SetPoint("BOTTOMLEFT",6,12)
	end
end)

TargetFrameSpellBar:SetScript("OnShow",nil)
Target_Spellbar_AdjustPosition=function() end
TargetFrameSpellBar:SetParent(UIParent)
TargetFrameSpellBar:ClearAllPoints()
TargetFrameSpellBar:SetPoint("CENTER",UIParent,"CENTER",207,-135)
TargetFrameSpellBar.SetPoint=function() end
TargetFrameSpellBar:SetScale(0.8)

BuffFrame:SetScale(0.7)