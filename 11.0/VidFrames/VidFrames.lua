--[[
UIErrorsFrame:ClearAllPoints()
UIErrorsFrame:SetPoint("CENTER",UIParent,"CENTER",0,550)
UIErrorsFrame:SetScale(0.7)
--UIErrorsFrame:SetAlpha(0)
--]]

--RUNEBAR 3 X 2
RuneFrame.Rune6:ClearAllPoints()
RuneFrame.Rune6:SetPoint("BOTTOMRIGHT",PlayerFrame,"TOPRIGHT",-35,-10)
RuneFrame.Rune6.SetPoint = function() end
RuneFrame.Rune5:ClearAllPoints()
RuneFrame.Rune5:SetPoint("BOTTOMLEFT",RuneFrame.Rune6,"BOTTOMRIGHT",0,0)
RuneFrame.Rune5.SetPoint = function() end
RuneFrame.Rune4:ClearAllPoints()
RuneFrame.Rune4:SetPoint("BOTTOMLEFT",RuneFrame.Rune6,"TOPLEFT",0,0)
RuneFrame.Rune4.SetPoint = function() end
RuneFrame.Rune3:ClearAllPoints()
RuneFrame.Rune3:SetPoint("BOTTOMLEFT",RuneFrame.Rune4,"BOTTOMRIGHT",0,0)
RuneFrame.Rune3.SetPoint = function() end
RuneFrame.Rune2:ClearAllPoints()
RuneFrame.Rune2:SetPoint("BOTTOMLEFT",RuneFrame.Rune4,"TOPLEFT",0,0)
RuneFrame.Rune2.SetPoint = function() end
RuneFrame.Rune1:ClearAllPoints()
RuneFrame.Rune1:SetPoint("BOTTOMLEFT",RuneFrame.Rune2,"BOTTOMRIGHT",0,0)
RuneFrame.Rune1.SetPoint = function() end
RuneFrame:SetScale(2)

--VARIOUS ELEMENTS
MainMenuBar.EndCaps.RightEndCap:Hide()
MainMenuBar.EndCaps.LeftEndCap:Hide()

DruidComboPointBarFrame:UnregisterAllEvents()
DruidComboPointBarFrame:SetScript("OnShow", function() DruidComboPointBarFrame:Hide() end)
DruidComboPointBarFrame:Hide()

BuffFrame:SetScale(0.8)

SpellActivationOverlayFrame:SetScale(0.5)
