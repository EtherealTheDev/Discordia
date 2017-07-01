local Cache = require('iterables/Cache')
local Iterable = require('iterables/Iterable')

local WeakCache = require('class')('WeakCache', Cache)

function WeakCache:__init(constructor, parent)
	Cache.__init(self, constructor, parent)
	setmetatable(self._objects, {__mode = 'v'})
end

-- NOTE: _count is not accurate for weak caches

function WeakCache:__len()
	return Iterable.__len(self)
end

return WeakCache