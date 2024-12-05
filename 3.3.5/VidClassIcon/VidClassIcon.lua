hooksecurefunc("UnitFramePortrait_Update", function(self)
  if self.portrait then
    if select(2, UnitClass(self.unit)) == "DRUID" then
      local i, flag=1, false
      while UnitBuff(self.unit, i) do
        local id = select(11,UnitBuff(self.unit, i))
        if id == 768 or -- Cat Form
           id == 783 or -- Travel Form
           id == 1066 or -- Aquatic Form
           id == 9634 or -- Dire Bear Form
           id == 24858 or -- Moonkin Form
           id == 33891 or -- Tree of Life
           id == 33943 or -- Flight Form
           id == 40120 then -- Swift Flight Form
          SetPortraitToTexture(self.portrait, GetSpellTexture(id));
          self.portrait:SetTexCoord(0,1,0,1)
          flag = true
        end
        i = i + 1
      end
      if not flag then
        self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
        self.portrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS.DRUID))
      end
    else
      local t = CLASS_ICON_TCOORDS[select(2,UnitClass(self.unit))]
      if t then
        self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
        self.portrait:SetTexCoord(unpack(t))
      end
    end
  end
end)