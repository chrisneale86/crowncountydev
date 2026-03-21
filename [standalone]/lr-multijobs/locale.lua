Locales = {}

function _(str, ...)
    -- Wait for Config to load if not available yet
    if not Config or not Config.locale then
        return str -- Return the key if Config isn't loaded yet
    end
    
	if Locales[Config.locale] ~= nil then
		if Locales[Config.locale][str] ~= nil then
			return string.format(Locales[Config.locale][str], ...)
		else
			return 'Translation [' .. Config.locale .. '][' .. str .. '] does not exist'
		end
	else
		return 'Locale [' .. Config.locale .. '] does not exist'
	end
end

function _U(str, ...)
	return tostring(_(str, ...):gsub("^%l", string.upper))
end