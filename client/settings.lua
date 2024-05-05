
local userData = {
    position = 'top',
    animation = nil,
    icon = nil,
    alignIcon = 'center',
    bgcolor = nil,
}

RegisterCommand('settings', function()
    local settings = lib.inputDialog(BL_Scripts.language.menu_title, {
        {type = 'select', label = 'Notify Position', description = 'Notify Position ändern', icon = 'location-dot', options = {
            {label = 'top', value = 'top'},
            {label = 'top-right', value = 'top-right'},
            {label = 'top-left', value = 'top-left'},
            {label = 'bottom', value = 'bottom'},
            {label = 'bottom-right', value = 'bottom-right'},
            {label = 'bottom-left', value = 'bottom-left'},
        }},
        {type = 'select', label = 'Icon Animation', description = 'Icon Animation ändern', icon = 'person-walking', options = {
            {label = 'spin', value = 'spin'},
            {label = 'spinPulse', value = 'spinPulse'},
            {label = 'spinReverse', value = 'spinReverse'},
            {label = 'pulse', value = 'pulse'},
            {label = 'beat', value = 'beat'},
            {label = 'fade', value = 'fade'},
            {label = 'beatFade', value = 'beatFade'},
            {label = 'bounce', value = 'bounce'},
            {label = 'shake', value = 'shake'},
        }},
        {type = 'input', label = 'Notify Icon', description = 'Only fontawesome 6 Icons', icon = 'icons', min = 1, max = 16},
        {type = 'select', label = 'Icon Position', description = 'Icon position ändern', icon = 'location-dot', options = {
            {label = 'top', value = 'top'},
            {label = 'center', value = 'center'},
        }},
        {type = 'color', label = 'Background Color', default = '#141517'},
        {type = 'checkbox', label = 'Reset'},
    })
    if not settings then return end
    if settings[1] then
        userData.position = settings[1]
        SetResourceKvp('bl_core:notify_position', userData.position)
        if BL_Scripts.Debug then 
            print(GetResourceKvpString('bl_core:notify_position'))
        end
    end
    if settings[2] then
        userData.animation = settings[2]
        SetResourceKvp('bl_core:notify_iconAnimation', userData.animation)
        if BL_Scripts.Debug then 
            print(GetResourceKvpString('bl_core:notify_iconAnimation'))
        end
    end
    if settings[3] then 
        userData.icon = settings[3]
        SetResourceKvp('bl_core:notify_icon', userData.icon)
        if BL_Scripts.Debug then 
            print(GetResourceKvpString('bl_core:notify_icon'))
        end
    end
    if settings[4] then 
        userData.alignIcon = settings[4]
        SetResourceKvp('bl_core:notify_alignIcon', userData.alignIcon)
        if BL_Scripts.Debug then 
            print(GetResourceKvpString('bl_core:notify_alignIcon'))
        end
    end
    if settings[5] then
        if settings[5] == userData.bgcolor then return  BL_Notify('BL Scripts', 'Du hast deine Notify einstellungen geändert!', 'success') end 
        userData.bgcolor = settings[5]
        SetResourceKvp('bl_core:notify_bgcolor', userData.bgcolor)
        if BL_Scripts.Debug then 
            print(GetResourceKvpString('bl_core:notify_bgcolor'))
        end
    end
    if settings[6] then 
        userData = {
            position = 'top',
            animation = 'spin',
            icon = 'bell',
            alignIcon = 'center',
            bgcolor = '#141517',
        }
        SetResourceKvp('bl_core:notify_position', userData.position)
        SetResourceKvp('bl_core:notify_iconAnimation', userData.animation)
        SetResourceKvp('bl_core:notify_icon', userData.icon)
        SetResourceKvp('bl_core:notify_alignIcon', userData.alignIcon)
        SetResourceKvp('bl_core:notify_bgcolor', userData.bgcolor)
        return BL_Notify('BL Scripts', 'Du hast deine Einstellungen zurückgesetzt', 'info')
    end
    if settings then 
        BL_Notify('BL Scripts', 'Du hast deine Notify einstellungen geändert!', 'success')
    end 
end)

RegisterCommand('getSettings', function()
    print(GetResourceKvpString('bl_core:notify_position'))
    print(GetResourceKvpString('bl_core:notify_iconAnimation'))
    print(GetResourceKvpString('bl_core:notify_icon'))
    print(GetResourceKvpString('bl_core:notify_showDuration'))
end)