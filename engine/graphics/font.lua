-- The base Font class.
Font = Object:extend()
function Font:init(asset_name, font_size)
  if (asset_name == 'NotoSansSC-Regular') then
    self.font = love.graphics.newFont("assets/fonts/NotoSansSC-Regular.otf", font_size)
  else
    self.font = love.graphics.newFont("assets/fonts/" .. asset_name .. ".ttf", font_size)
  end
  self.h = self.font:getHeight()
end


function Font:get_text_width(text)
  return self.font:getWidth(text)
end


function Font:get_height()
  return self.font:getHeight()
end
