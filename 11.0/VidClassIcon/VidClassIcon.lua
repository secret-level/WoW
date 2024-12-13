hooksecurefunc("UnitFramePortrait_Update", function(self)
  if self.portrait then
    if select(2, UnitClass(self.unit)) == "DRUID" then
      local i, numForms, isInForm = 1, GetNumShapeshiftForms(), false
      while i <= numForms do -- check ShiftBar
        local _, active, _, spellId = GetShapeshiftFormInfo(i)
        -- local active, spellId = select(2, GetShapeshiftFormInfo(i)), select(4, GetShapeshiftFormInfo(i))
        if spellId == 5487 and active then -- Bear Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Racial_BearForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif spellId == 768 and active then -- Cat Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_CatForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif spellId == 24858 and active then -- Moonkin Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\ability_druid_improvedmoonkinform")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif spellId == 783 and active then -- Travel Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TravelForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif spellId == 114282 and active then -- Treant Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TreeofLife")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif spellId == 210053 and active then -- Mount Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TravelForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        end
        i = i + 1
      end
      if not isInForm then -- check for Incarnation buff
        local j = 1
        while C_UnitAuras.GetBuffDataByIndex(self.unit, j) do
          local id = C_UnitAuras.GetBuffDataByIndex(self.unit, j).spellId
          -- ChatFrame1:AddMessage(j) ChatFrame1:AddMessage(id)
          if id == 33891 then -- Tree of Life
            SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TreeofLife")
            self.portrait:SetTexCoord(0,1,0,1)
            isInForm = true
          end
          j = j + 1
        end
      end
      if not isInForm then -- Druid icon
        self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
        self.portrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS.DRUID))
      end
    else -- other classes' icon
      local t = CLASS_ICON_TCOORDS[select(2, UnitClass(self.unit))]
      if t then
        self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
        self.portrait:SetTexCoord(unpack(t))
      end
    end
  end
end)