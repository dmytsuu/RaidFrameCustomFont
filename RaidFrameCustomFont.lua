local FONT_PATH = 'Interface\\AddOns\\RaidFrameCustomFont\\BIGNOODLETOO.TTF'

local function changeFrameFont(frame)
  local statusFontName, statusFontSize, statusFontFlags = frame.statusText:GetFont();
  local nameFontName, nameFontSize, nameFontFlags = frame.name:GetFont();
  frame.statusText:SetFont(FONT_PATH, statusFontSize)
  frame.name:SetFont(FONT_PATH, nameFontSize)
end

hooksecurefunc('DefaultCompactUnitFrameSetup', changeFrameFont)
