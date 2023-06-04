Config = {}

Config.UIzones = {
    {
        name = 'MRPD_CheckIn',
        coords = vec3(440.774, -982.053, 30.689),
        wight = 1.6,
        lenght = 1.0,
        range = 4,
        debug = false,
    },
    {
        name = 'MRPD_Armory',
        coords = vec3(481.0, -995.25, 31.0),
        wight = 2.25,
        lenght = 1.25,
        range = 2.75,
        debug = false,
    },
    {
        name = "Trash_MRPD",
        coords = vec3(447.0, -997.0, 31.0),
        wight = 2,
        lenght = 2,
        range = 2,
        debug = false,
    },
    {
        name = "Fingerprint",
        coords = vec3(473.0, -1007.25, 26.0),
        wight = 2.25,
        lenght = 0.75,
        range = 2.75,
        debug = false,
    },
    {
        name = "mrpd_evidance",
        coords = vec3(474.0, -995.25, 26.0),
        wight = 4,
        lenght = 5,
        range = 6,
        debug = true,
    },
}

Config.TextUI = {
    --MRPD CheckIn
    {
        text = "Press [E] to check in",
        key = 38,
        event = "mrpd:checkin",
    },
    --MRPD Armory
    {
        text = "Press [E] to open armory",
        key = 38,
        event = "qb-police:client:openArmoury",
    },
    {
        text = "Press [E] to open trash",
        key = 38,
        event = "qb-police:client:openTrash",
    },
    {
        text = "Press [E] to open fingerscan",
        key = 38,
        event = "qb-police:client:scanFingerPrint",
    },
    {
        text = "Press [E] to open evidence",
        key = 38,
        event = "police:client:EvidenceStashDrawer",
    },
}