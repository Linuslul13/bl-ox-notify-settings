function BL_Notify(title, description, type)
    local notify_position = GetResourceKvpString('bl_core:notify_position') or 'top'
    local notify_iconAnimation = GetResourceKvpString('bl_core:notify_iconAnimation') or ''
    local notify_icon = GetResourceKvpString('bl_core:notify_icon') or ''
    local notify_alignIcon = GetResourceKvpString('bl_core:notify_alignIcon') or true
    local notify_bgcolor = GetResourceKvpString('bl_core:notify_bgcolor') or nil
    lib.notify({
        title = title or '',
        description = description or '',
        type = type or 'info',
        position = notify_position,
        iconAnimation = notify_iconAnimation,
        icon = notify_icon,
        style = {
            backgroundColor = notify_bgcolor,
        },
        duration = 5000,
        alignIcon = notify_alignIcon,
    })
end

RegisterNetEvent('bl_notify', function(type, title, description)
    BL_Notify(title, description, type)
end)