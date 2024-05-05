Discord for Help: discord.gg/nYCvThHYyd

Client Trigger:
    TriggerEvent('bl_notify', type, title, description)
Server Trigger: 
    TriggerServerEvent('bl_notify', source, type, title, description)

Export:
    exports.bl_notify:BL_Notify(title, description, type)