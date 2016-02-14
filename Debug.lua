-- Debug class for adding to model
require 'image'

local Debug, parent = torch.class("nn.Debug", "nn.Module")
local step = 1
function Debug:__init()
  --local ds = dp.Flickr8k()
  self.vocab = ds._flickr8k[4]
end

--function Debug:updateOutput(inputTable) -- debug GlimpseSensor
--    print ("updateOutput for Debug")
--    print (torch.type(inputTable))
--    print (inputTable:size())
--    local outputs = torch.chunk(inputTable[1], 3) -- first glimpse of the batches
--    local display = image.toDisplayTensor(outputs)
--    local filepath = string.format("/home/lc/save/glimpse/glimpse-%s.png", step)
--    image.save(filepath, display)
--    step = step + 1
--    io.read(1)
--    return inputTable
--end

function Debug:updateOutput(inputTable) -- debug LogSoftMax
  --print ("updateOutput for Debug")
  --_, idx = torch.max(inputTable,2)
  --print (self.vocab[tostring(idx[1][1])])
  --step = step + 1
  --io.read(1)
  --if step == 16 then print () end
  return inputTable
end

function Debug:updateGradInput(inputTable, gradOutput)
    return gradOutput
end
