Translation = {}

Translation.Notifications = {

    BackupAccepted = function(vorp, _target)
        vorp.NotifyObjective(_target, "Backup request accepted", 5000)
    end,
    BackupRejected = function(vorp, _target)
        vorp.NotifyObjective(_target, "Backup request rejected", 5000)
    end,

    BackupReceived = function(vorp, _source)
        vorp.NotifyObjective(_source, "player received request to backup", 5000)
    end,

    RequestToGoOnDuty = function(vorp, target, copName, _source)
        vorp.NotifyObjective(target, copName .. " has requested you to go on duty numbers are needed", 5000)
        vorp.NotifyTip(_source, "player received request to go on duty", 5000)
    end,

    NewOrdersReceived = function(vorp, location)
        vorp.NotifyObjective("New orders received for " .. location .. " officers", 5000)
    end,

    NewOrdersReceivedAll = function(vorp)
        vorp.NotifyObjective("New orders received for all officers", 5000)
    end,

    BackupRequested = function(vorp)
        -- dont change the type of notify must be this one
        vorp.NotifyObjective("Backup Requested, press ~INPUT_FRONTEND_ACCEPT~ to accept or ~INPUT_FRONTEND_CANCEL~ to reject", -1)
        vorp.NotifyTip("Check the map to see the location of the officer that requested backup", -1)
    end,

    FollowWaypoint = function(vorp)
        vorp.NotifyObjective("Follow the waypoint to the area to assist the officer waypoint will be removed after 60 seconds", 6000)
    end,

    OrdersUpdated = function(vorp)
        vorp.NotifyObjective("Orders updated successfully", 5000)
    end,
    OrdersNotUpdated = function(vorp)
        vorp.NotifyObjective("Failed to update orders", 5000)
    end,

    BackupRequestRejected = function(vorp)
        vorp.NotifyObjective("Backup request rejected", 5000)
    end,


    AlreadyClockedIn = function(vorp)
        vorp.NotifyObjective("You are already clocked in", 5000)
    end,
    NotClockedIn = function(vorp)
        vorp.NotifyObjective("You are not clocked in", 5000)
    end,

    DutyDataCleaned = function(vorp)
        local text = "Duty data has been cleaned"
        vorp.NotifyObjective(text, 5000)
    end,

    GunPowderHands = function(vorp)
        local text = "You have gunpowder residue on your hands"
        vorp.NotifyTip(text, 5000)
    end,
    GunPowderInWater = function(vorp)
        local text = "Stay crouching in water to remove gunpowder residue from hands"
        vorp.NotifyTip(text, 5000)
    end,

    GunPowderWashedAway = function(vorp)
        local text = "Gunpowder residue has been washed away from your hands"
        vorp.NotifyTip(text, 5000)
    end,

    GunHasResidue = function(vorp, heat)
        local text = "Gun has gunpowder residue and it's barrel is hot " .. heat .. "%"
        vorp.NotifyTip(text, 5000)
    end,

    GunHasNoResidue = function(vorp)
        local text = "Gun has no gunpowder residue and it's barrel is cool"
        vorp.NotifyTip(text, 5000)
    end,

    NotHoldingGun = function(vorp)
        local text = "You must be holding a gun to check the gun"
        vorp.NotifyTip(text, 5000)
    end,

    PlayerTooFar = function(vorp)
        local text = "Player is too far away to check hands"
        vorp.NotifyTip(text, 5000)
    end,

    HandsHaveResidue = function(vorp)
        local text = "Hands have gunpowder residue"
        vorp.NotifyTip(text, 5000)
    end,

    HandsHaveNoResidue = function(vorp)
        local text = "Hands have no gunpowder residue"
        vorp.NotifyTip(text, 5000)
    end,

    NotAnAdmin = function(vorp, source)
        local text = "You are not an admin"
        vorp.NotifyObjective(source, text, 5000)
    end,

    NoTargetProvided = function(vorp, source)
        local text = "No target provided"
        vorp.NotifyObjective(source, text, 5000)
    end,

    TargetNotFound = function(vorp, source)
        local text = "Target not found"
        vorp.NotifyObjective(source, text, 5000)
    end,

    NoTimeProvided = function(vorp, source)
        local text = "No time provided"
        vorp.NotifyObjective(source, text, 5000)
    end,

    IncreaseTimeFacing = function(vorp, source, time, name)
        local text = "Time increased for " .. name .. " by " .. time .. " minutes"
        vorp.NotifyObjective(source, text, 5000)
    end,

    DecreaseTimeFacing = function(vorp, source, time, name)
        local text = "Time decreased for " .. name .. " by " .. time .. " minutes"
        vorp.NotifyObjective(source, text, 5000)
    end,

    MaxTasks = function(vorp)
        local text = "~e~You have reached the maximum number of tasks for this restart"
        vorp.NotifyObjective(text, 5000)
    end,
    PlayerCloseBy = function(vorp)
        local text = "~e~There is another player close by, only one player can be in the stable at a time"
        vorp.NotifyObjective(text, 5000)
    end,
    UpdateLedger = function(vorp, source, type)
        local text = ""
        if type == "Withdraw" then
            text = "you have withdrawn money from the ledger"
        elseif type == "Deposit" then
            text = "you have deposited money to the ledger"
        end
        vorp.NotifyObjective(source, text, 5000)
    end,


    PlayerMustHaveCuffs = function(vorp) -- NEW 10/31/2024
        local text = "~e~Player must be cuffed"
        vorp.NotifyObjective(text, 5000)
    end,

    MustBeHoldingOneWeapon = function(vorp)
        local text = "~e~You Must be holding one weapon only"
        vorp.NotifyObjective(text, 5000)
    end,

    YouHavePayToCollect = function(vorp)
        local text = "You have salary to collect before you can go on duty on another station"
        vorp.NotifyObjective(text, 5000)
    end,
    CantGoOnduty = function(vorp, town)
        local text = "you are on duty at " .. town .. " you need to go off duty first in oder to work for another station make sure to collect your pay first"
        vorp.NotifyObjective(text, 5000)
    end,
    PlayerSuspended = function(vorp, source)
        local text = "You are no longer suspended relog to get your permissions back"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerWasSusPended = function(vorp, source)
        local text = "Player is no longer suspended and must relog"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerWasSusPended1 = function(vorp, source)
        local text = "You Have suspended player from performing any law actions"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerIsSuspended = function(vorp, source)
        local text = "You have been suspended from performing any law actions"
        vorp.NotifyObjective(source, text, 5000)
    end,
    YouAreNowFree = function(vorp, source)
        local text = "You are now free to go , ask a guard to take you out"
        vorp.NotifyLeftRank(source, "Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    NotInConfineAnyMore = function(vorp)
        local text = "You are no longer in solitary confinement"
        vorp.NotifyLeftRank("Solitary Confinement!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    SetPlayerToJail = function(vorp, source)
        local text = "Player you sent to prison is now in jail you need to go to reports and accept his entrance to begin jail time"
        vorp.NotifyLeftRank(source, "Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    NotifyWtinessReportedCrime = function(vorp, source)
        local text = "A witness has reported a crime"
        vorp.NotifyLeftRank(source, "Crime Alert!!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,

    CrimeAlert = function(vorp, source, crimeType)
        local crimes = {
            ["crime_theft_horse"] = "stolen horse crime has been witnessed",
            ["crime_theft_vehicle"] = "stolen wagon crime has been witnessed"
        }
        local text = crimes[crimeType]
        vorp.NotifyLeftRank(source, "Crime Alert!!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    MaxEmployeesReached = function(vorp, source)
        local text = "~e~Max employees hired reached"
        vorp.NotifyObjective(source, text, 5000)
    end,
    NotInLocation = function(vorp)
        local text = "~e~You cant go on duty outside in this station"
        vorp.NotifyObjective(text, 5000)
    end,
    WeaponNotAllowed = function(vorp)
        local text = "~e~ weapon not allowed to be stored here"
        vorp.NotifyObjective(text, 5000)
    end,
    InvalidePosterType = function(vorp)
        local text = "~e~Invalid poster type read the description it says what types are allowed"
        vorp.NotifyObjective(text, 5000)
    end,
    NoBillsFound = function(vorp)
        local text = "~e~No bills found"
        vorp.NotifyObjective(text, 5000)
    end,
    BillNotEnoughMoney = function(vorp)
        local text = "~e~You don't have enough money to pay the bill"
        vorp.NotifyObjective(text, 5000)
    end,

    YouAreNowFacingTime = function(vorp, date, cellnumber, source)
        local text = "You are now facing time in Sisika Penitentiary \n Time facing: " .. date .. " H\n You have been assigned to cell number " .. cellnumber .. " Block B "
        vorp.NotifyLeftRank(source, "Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    MustBeUnarmed = function(vorp)
        local text = "~e~You must be unarmed to do this"
        vorp.NotifyObjective(text, 5000)
    end,
    MustBeHoldingWeapon = function(vorp)
        local text = "~e~You must be holding a weapon "
        vorp.NotifyObjective(text, 5000)
    end,
    WeaponDoesNotMatch = function(vorp)
        local text = "Weapon you are holding does not match the type of weapon rack you are trying to store it in"
        vorp.NotifyObjective(text, 5000)
    end,
    PlayerMustHaveHandsUp = function(vorp)
        local text = "~e~Player must have hands up to be searched hogtied or cuffed"
        vorp.NotifyObjective(text, 5000)
    end,
    DontHaveRope = function(vorp)
        local text = "~e~You don't have a rope to hogtie"
        vorp.NotifyObjective(text, 5000)
    end,
    DontHaveCuffs = function(vorp)
        local text = "~e~You don't have cuffs to cuff"
        vorp.NotifyObjective(text, 5000)
    end,
    InsertOccurrence = function(vorp, text)
        vorp.NotifyObjective(text, 5000)
    end,
    ArchiveOccurrence = function(vorp, action)
        local text = action and "~t6~Report archived successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    CanMakeNewOccurrence = function(vorp)
        local text = "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    CanEditOccurrences = function(vorp)
        local text = "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    UpdateOccurrence = function(vorp, action)
        local text = action and "~t6~Report updated successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,

    DeleteArchivedOccurrence = function(vorp, action)
        local text = action and "~t6~Report deleted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    AccepteRequest = function(vorp, action)
        local text = action and "~t6~Request accepted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    RejectRequest = function(vorp, action)
        local text = action and "~t6~Request rejected successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    CanMakeNewRequest = function(vorp, action)
        local text = action and "~t6~Request created successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    CanEditRequest = function(vorp, action)
        local text = action and "~t6~Request updated successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    DeleteRequest = function(vorp, action)
        local text = action and "~t6~Request deleted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    UpdateRequest = function(vorp, action)
        local text = action and "~t6~Request updated successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    InsertRequest = function(vorp, action)
        local text = action and "~t6~Insert Request  successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    UpdateRecordsNote = function(vorp, action)
        local text = action and "~t6~Record updated successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    GetRecords = function(vorp, text)
        vorp.NotifyObjective(text, 5000)
    end,
    DeleteRecord = function(vorp, action)
        local text = action and "~t6~Record deleted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    UpdateRecordImage = function(vorp, action)
        local text = action and "~t6~Record image updated successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    DeleteJailRecord = function(vorp, action)
        local text = action and "~t6~Jail record deleted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    CanEditJailRecord = function(vorp)
        local text = "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    AcceptJailRecord = function(vorp, action)
        local text = action and "~t6~Jail record accepted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    ReleaseJailRecord = function(vorp, action)
        local text = action and "~t6~Jail record released successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    UpdateTimeServed = function(vorp, action)
        local text = action and "~t6~Time served updated successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    SetWanted = function(vorp, action, message)
        local text = action and "~t6~Wanted status updated successfull" or message
        vorp.NotifyObjective(text, 5000)
    end,
    AddBackToJail = function(vorp, action)
        local text = action and "~t6~Back to jail successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    ConfinePlayer = function(vorp, action, action1)
        local confined = action1 == 1 and "removed" or "added"
        local msg = action and "~t6~Player " .. confined .. " to solitary successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(msg, 5000)
    end,
    GetInvestigations = function(vorp, text)
        vorp.NotifyObjective(text, 5000)
    end,
    CanCreateNewInvestigation = function(vorp)
        local text = "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    CanEditInvestigation = function(vorp)
        local text = "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    DeleteInvestigation = function(vorp, action)
        local text = action and "~t6~Investigation deleted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    RejectInvestigation = function(vorp, action)
        local text = action and "~t6~Investigation rejected successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    AcceptInvestigation = function(vorp, action)
        local text = action and "~t6~Investigation accepted successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    UpdateCase = function(vorp, action)
        local text = action and "~t6~Case updated successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    InsertCase = function(vorp, action)
        local text = action and "~t6~Case created successfull" or "~e~you dont have permission for this action"
        vorp.NotifyObjective(text, 5000)
    end,
    NotOnDuty = function(vorp)
        local text = "~e~You are not on duty"
        vorp.NotifyObjective(text, 5000)
    end,
    NotInRightLocation = function(vorp)
        local text = "~e~You are not close enough to the stations or town to open menu"
        vorp.NotifyObjective(text, 5000)
    end,
    NotDetective = function(vorp)
        local text = "~e~You are not a detective"
        vorp.NotifyObjective(text, 5000)
    end,
    CantOpenReportsOnMount = function(vorp)
        local text = "~e~You can't open reports while on a mount or vehicle"
        vorp.NotifyObjective(text, 5000)
    end,
    CoolDownDuty = function(vorp, minutesremaining)
        local text = "~e~You need to wait " .. minutesremaining .. " minutes before going on duty again"
        vorp.NotifyObjective(text, 5000)
    end,
    YouAreOffDuty = function(vorp)
        local text = "You are now off duty"
        vorp.NotifyLeftRank("Duty!", text, "inventory_items", "provision_sheriff_star", 8000, "COLOR_PURE_WHITE")
    end,
    YouAreOnDuty = function(vorp)
        local text = "You are now on duty!"
        vorp.NotifyLeftRank("Duty!", text, "inventory_items", "provision_sheriff_star", 8000, "COLOR_PURE_WHITE")
    end,
    YouDontHavePayToCollect = function(vorp)
        local text = "~e~You have no pay to collect"
        vorp.NotifyObjective(text, 5000)
    end,
    AlreadyHasBadgeOn = function(vorp)
        local text = "~e~You already have a badge on"
        vorp.NotifyObjective(text, 5000)
    end,
    DontHaveBadgeOn = function(vorp)
        local text = "~e~You don't have a badge on"
        vorp.NotifyObjective(text, 5000)
    end,
    PenalCodeNotFound = function(vorp)
        local text = "~e~Penal code not found insert valid penal code"
        vorp.NotifyObjective(text, 5000)
    end,
    IssueBillFailed = function(vorp, type)
        local text = ""
        if type == 1 then
            text = "You are not on duty"
        elseif type == 2 then
            text = "Item not does not exist contact developer"
        elseif type == 3 then
            text = "Player can't carry more of this item"
        elseif type == 4 then
            text = "Player can't carry more items in inventory, is full!"
        elseif type == 5 then
            text = "Bill issued to player and has received a bill"
            return vorp.NotifyLeftRank("Billing!", text, "inventory_items", "provision_sheriff_star", 6000, "COLOR_PURE_WHITE")
        end

        vorp.NotifyObjective(text, 5000)
    end,
    BillNotPaidYet = function(vorp)
        local text = "~e~Bill not paid yet"
        vorp.NotifyObjective(text, 5000)
    end,
    BillWasPaid = function(vorp)
        local text = "~t6~Bill was paid"
        vorp.NotifyObjective(text, 5000)
    end,
    BillNotEnoughtMoney = function(vorp)
        local text = "~e~You don't have enough money to pay the bill"
        vorp.NotifyObjective(text, 5000)
    end,
    BillWasAlreadyPaid = function(vorp)
        local text = "~e~Bill was already paid"
        vorp.NotifyObjective(text, 5000)
    end,
    CrimeWitnessed = function(vorp)
        local text = "A crime you made has been reported, Law will be on Alert!!"
        vorp.NotifyLeftRank("Crime Alert!!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    CrimeCommitted = function(vorp)
        local text = "Someone witnessed you committing a crime, witnesses can report you, use a mask or bandana to hide your face"
        vorp.NotifyLeftRank("Crime Alert!!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    DontHaveItem = function(vorp, item, type)
        local text = ""
        if type == 1 then
            text = "you dont have " .. item .. " Needed"
        elseif type == 2 then
            text = "you dont have enough quantiy of " .. item .. " Needed"
        end
        vorp.NotifyLeftRank("Investigation!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    CrimeInfoExtracted = function(vorp, type)
        local text = ""
        if type == 1 then
            text = "Bullet Sample Taken It needs to be examined to extract Information for the case"
        elseif type == 2 then
            text = "No bullet found in the body, apears to have been killed on a hand fight"
        elseif type == 3 then
            text = "No bullet found in the body, appears to have been killed by melee weapon"
        end
        vorp.NotifyLeftRank("Investigation!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    UseMonocle = function(vorp)
        local text = "~e~You need to use the monocle to inspect the sample"
        vorp.NotifyObjective(text, 5000)
    end,
    NotCloseToInspectionStation = function(vorp)
        local text = "You need to be close to a Laboratory to examine bullet samples"
        vorp.NotifyObjective(text, 5000)
    end,
    InspectionBullet = function(vorp, type, label)
        local text = ""
        if type == 1 then
            text = "Ammo used confirmed: " .. label
        elseif type == 2 then
            text = "Weapon used confirmed : " .. label
        elseif type == 3 then
            text = "You have received an item with the information extracted add that info to the reports system"
        end
        vorp.NotifyLeftRank("Investigation!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    NoCrimesReported = function(vorp)
        local text = "~e~No crimes reported"
        vorp.NotifyObjective(text, 5000)
    end,
    CantHang = function(vorp)
        local text = "Only Cops of Valentine and Saint Denis can rope players"
        vorp.NotifyObjective(text, 5000)
    end,
    NotCloseEnoughtToThePlayer = function(vorp)
        local text = "You are not close enough to the gallow to rope player 5meters minimum make sure player is cuffed"
        vorp.NotifyObjective(text, 5000)
    end,
    NoPlayersNearby = function(vorp)
        local text = "No player found nearby or they are not cuffed"
        vorp.NotifyObjective(text, 5000)
    end,
    PlayerNotCloseEnoughToGallow = function(vorp)
        local text = "Player is not close enough make sure he is standing on the gallow"
        vorp.NotifyObjective(text, 5000)
    end,
    PlayerNotCuffed = function(vorp)
        local text = "Player needs to be cuffed to be hanged"
        vorp.NotifyObjective(text, 5000)
    end,
    UseBoatTransport = function(vorp)
        local text = "You need to use the boat to transport the prisoner"
        vorp.NotifyLeftRank("Transport!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    BoatAlreadySpawned = function(vorp)
        local text = "Boat already spawned"
        vorp.NotifyObjective(text, 5000)
    end,
    AlreadyInBoat = function(vorp)
        local text = "Ped is alredy in a boat "
        vorp.NotifyObjective(text, 5000)
    end,
    HaveBeenJailed = function(vorp, cell)
        local text = "You have Been Jailed, You can't leave until your time is up! ask the guard 8 to release you and check your time"
        vorp.NotifyLeftRank("Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
        Wait(5000)
        if cell then
            vorp.NotifyLeftRank("Sisika Penitentiary!", "Your Cell number is " .. cell .. " Block B blip # 3 check your map", "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
        end
    end,
    SolitaryConfinement = function(vorp, time)
        local text = "You  are in Solitary confinement, once time is up the guard will release you \n  TimeLeft is " .. time .. " minutes"
        vorp.NotifyLeftRank("Solitary Confinement!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    TimesUp = function(vorp)
        local text = "Your time is up, you are free to go ask the guard to release you at the gate or contact a player to release you"
        vorp.NotifyLeftRank("Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    SolitaryTimesUp = function(vorp)
        local text = "Time is up, the guard will release you"
        vorp.NotifyLeftRank("Solitary Confinement!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    HasReleasedYou = function(vorp)
        local text = "Time is up, the guard have released you"
        vorp.NotifyLeftRank("Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    YouAreFree = function(vorp)
        local text = "You are free to go! Remember to stay out of trouble"
        vorp.NotifyLeftRank("Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    FailedToOpenDoor = function(vorp)
        local text = "Failed to open door"
        vorp.NotifyObjective(text, 5000)
    end,
    FailedToOpenDoorNoItem = function(vorp)
        local text = "You dont have the required item "
        vorp.NotifyObjective(text, 5000)
    end,
    AlarmTriggered = function(vorp)
        local text = "The alarm has been triggered fight off the guards"
        vorp.NotifyLeftRank("Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000)
    end,
    AlarmNoTriggered = function(vorp)
        local text = "Alarm did not go off you were undetected"
        vorp.NotifyObjective(text, 5000)
    end,
    ToofarFromAlarm = function(vorp)
        local text = "You are too far from the prison this only works if you are in the prison sisika location"
        vorp.NotifyObjective(text, 5000)
    end,
    Crafting = function(vorp, type)
        local text = ""
        if type == 1 then
            text = "You don't have all required items."
        elseif type == 2 then
            text = "You can't carry that much."
        elseif type == 3 then
            text = "You can't carry that much."
        end
        vorp.NotifyObjective(text, 5000)
    end,
    Cooked = function(vorp, name)
        local text = "You have cooked " .. name
        vorp.NotifyObjective(text, 5000)
    end,
    Crafted = function(vorp, name)
        local text = "You have crafted " .. name
        vorp.NotifyObjective(text, 5000)
    end,
    AlreadyHasATask = function(vorp)
        local text = "You are already have a task active"
        vorp.NotifyObjective(text, 5000)
    end,
    ChoreAccepted = function(vorp, name)
        local text = "You have accepted the task " .. name .. " Once completed you will be rewarded"
        vorp.NotifyLeftRank("Prison Chores!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    GetTool = function(vorp, type)
        local text = ""
        if type == 1 then
            text = "You don't have the required tool."
        elseif type == 2 then
            text = "Tools must be made by Carpenters they contain durability"
        elseif type == 3 then
        end
        vorp.NotifyObjective(text, 5000)
    end,
    FoundSomething = function(vorp)
        local text = "You have found something useful on the floor"
        vorp.NotifyObjective(text, 5000)
    end,
    LeavingArea = function(vorp)
        local text = "You are leaving the prison area be aware beyond this point if you try to run away you will be shot on site/charged with more time"
        vorp.NotifyObjective(text, 5000)
    end,
    LeftArea = function(vorp)
        local text = "You are leaving the prison area you have 10 seconds to get back before they go look for you"
        vorp.NotifyObjective(text, 5000)
    end,

    BackInside = function(vorp)
        local text = " You are back inside the prison area"
        vorp.NotifyObjective(text, 5000)
    end,

    Escaping = function(vorp)
        local text = "You are trying to escape the prison, you have 15 minutes to escape the prison to succesfully become a fugitive"
        vorp.NotifyLeftRank("Prison Escape!", text, "inventory_items", "provision_sheriff_star", 8000, "COLOR_PURE_WHITE")
    end,
    Escaped = function(vorp)
        local text = "You have successfully escaped the prison, you are now a fugitive"
        vorp.NotifyLeftRank("Prison Escape!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    NoWantedPosters = function(vorp)
        local text = "There are no wanted posters in this town"
        vorp.NotifyObjective(text, 5000)
    end,
    PosterAdded = function(vorp)
        local text = "Wanted poster added"
        vorp.NotifyLeftRank("Wanted Board!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    PosterRemoved = function(vorp)
        local text = "Wanted poster removed"
        vorp.NotifyLeftRank("Wanted Board!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    DoorLocked = function(vorp)
        local text = "Door is locked"
        vorp.NotifyObjective(text, 5000)
    end,
    WagonOutAlready = function(vorp)
        local text = "you have a wagon out cant pull another"
        vorp.NotifyObjective(text, 5000)
    end,
    NoWagonsBought = function(vorp)
        local text = "You have not bought any wagons"
        vorp.NotifyObjective(text, 5000)
    end,
    WaitTurn = function(vorp)
        local text = "Wait for your turn"
        vorp.NotifyObjective(text, 5000)
    end,
    WagonNearBy = function(vorp)
        local text = "There is a wagon on the way"
        vorp.NotifyObjective(text, 5000)
    end,
    NoHorsesBought = function(vorp)
        local text = "You have not bought any horses"
        vorp.NotifyObjective(text, 5000)
    end,
    HorseNearBy = function(vorp)
        local text = "There is a horse on the way"
        vorp.NotifyObjective(text, 5000)
    end,
    MustBeOnduty = function(vorp, source)
        local text = "You must be on duty"
        vorp.NotifyObjective(source, text, 5000)
    end,
    CantCarryThisItem = function(vorp, source)
        local text = "You can't carry more of  this item"
        vorp.NotifyObjective(source, text, 5000)
    end,
    CantCarryInvFull = function(vorp, source)
        local text = "You can't carry more items in inventory, is full!"
        vorp.NotifyObjective(source, text, 5000)
    end,
    CantSearchPolice = function(vorp, source)
        local text = "You can't search a police officer"
        vorp.NotifyObjective(source, text, 5000)
    end,
    YouAreBeingSearched = function(vorp, source)
        local text = "You are being searched by the Law"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerHired = function(vorp, source)
        local text = "You have been hired as a Lawman"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerWasHired = function(vorp, source)
        local text = "You have hired a Lawman"
        vorp.NotifyObjective(source, text, 5000)
    end,
    CantFire = function(vorp, source)
        local text = "You can't fire Yourself"
        vorp.NotifyObjective(source, text, 5000)
    end,
    UserDontExist = function(vorp, source)
        local text = "User does not exist"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerMustBeOffDuty = function(vorp, source)
        local text = "Player must be off duty to fire him"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerFired = function(vorp, source)
        local text = "You have been fired from police force"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerWasFired = function(vorp, source)
        local text = "You have fired a Lawman"
        vorp.NotifyObjective(source, text, 5000)
    end,
    CantPromote = function(vorp, source)
        local text = "You can't promote Yourself"
        vorp.NotifyObjective(source, text, 5000)
    end,
    GradeDontExist = function(vorp, source)
        local text = "This Grade does not exist"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerPromoted = function(vorp, source)
        local text = "You have been promoted in your job as lawman"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerWasPromoted = function(vorp, source)
        local text = "You have promoted a Lawman"
        vorp.NotifyObjective(source, text, 5000)
    end,
    PlayerHasNotBeenJailled = function(vorp, source)
        local text = "This player has not been registered to be jailed in sisika, you must do it in the reports system, file an occurence first"
        vorp.NotifyObjective(source, text, 5000)
    end,
    AlertBounty = function(vorp, source, town)
        local text = "A new bounty has been added to the board in the town of " .. (town or " update the script") --NEW
        vorp.NotifyLeftRank(source, "Bounty Board!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    DontHaveThisWeapon = function(vorp, source)
        local text = "You don't have this weapon"
        vorp.NotifyObjective(source, text, 5000)
    end,
    CantCarryWeapons = function(vorp, source)
        local text = "You can't carry more weapons"
        vorp.NotifyObjective(source, text, 5000)
    end,
    ReceivedBillToPay = function(vorp, source, town, paynow) --NEW 10/17/2024
        local text = "You have received a bill to pay in the town of " .. town .. " read the bill for date time to pay"
        if paynow then
            text = "you have been billed check your pockets for the bill"
        end
        vorp.NotifyObjective(source, text, 5000)
    end,
    CantCollectPay = function(vorp, source)
        local text = "you need to go off duty to collect your pay."
        vorp.NotifyObjective(source, text, 5000)
    end,
    CollectedPay = function(vorp, source, payment)
        local text = "You have collected your pay of $" .. payment
        vorp.NotifyLeftRank(source, "Pay Day!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    NothingToCollect = function(vorp, source)
        local text = "You have nothing to collect"
        vorp.NotifyObjective(source, text, 5000)
    end,
    NotADetective = function(vorp, source)
        local text = "You are not a detective"
        vorp.NotifyObjective(source, text, 5000)
    end,
    SampleContainNoInfo = function(vorp, source)
        local text = "This bullet case dont have any information"
        vorp.NotifyObjective(source, text, 5000)
    end,
    NoPermToDelete = function(vorp, source)
        local text = "You dont have permission to delete"
        vorp.NotifyObjective(source, text, 5000)
    end,
    NotInJail = function(vorp, source)
        local text = "You are not in jail"
        vorp.NotifyObjective(source, text, 5000)
    end,
    NotServedAnyTime = function(vorp, source)
        local text = "You have not served any time"
        vorp.NotifyObjective(source, text, 5000)
    end,
    TimeToBeReleased = function(vorp, source)
        local text = "You are ready to be released Head over to the gate and ask guard to release you."
        vorp.NotifyLeftRank(source, "Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    TimeServed = function(vorp, source, timeservedtoday, timetoface)
        local text = "Total time faced: " .. timeservedtoday .. "\n Total time to face: " .. timetoface
        vorp.NotifyLeftRank(source, "Sisika Penitentiary!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    NotAllowedToOpenStorage = function(vorp, source)
        local text = "You are not allowed to open this storage"
        vorp.NotifyObjective(source, text, 5000)
    end,
    RewardPrisonMoney = function(vorp, source, money, time)
        local text = "You have been rewarded $" .. money .. " for completing the task. your time in prison was reduced by " .. time
        vorp.NotifyLeftRank(source, "Prison Chores!", text, "inventory_items", "provision_sheriff_star", 5000, "COLOR_PURE_WHITE")
    end,
    NoPermissionToUseBook = function(vorp, source)
        local text = "You dont have permission to use this item"
        vorp.NotifyObjective(source, text, 5000)
    end,
    NoLockPick = function(vorp, source)
        local text = "You dont have a lock pick"
        vorp.NotifyObjective(source, text, 5000)
    end,
    NotEnoughMoney = function(vorp, source)
        local text = "You dont have enough money"
        vorp.NotifyObjective(source, text, 5000)
    end,
    WagonWasBought = function(vorp, source, price)
        local text = "You have bought a wagon for $" .. price
        vorp.NotifyObjective(source, text, 5000)
    end,
    HorseWasBought = function(vorp, source, price)
        local text = "You have bought a horse for $" .. price
        vorp.NotifyObjective(source, text, 5000)
    end,

}

Translation.Menus = {
    Billing  = {
        Menu = {
            elements = {
                { label = "View All Bills",      desc = "View all bills issued by this town" },
                { label = "Search Bills Status", desc = "Search for a bill status <br> ACTIVE PAID UNPAID ARCHIVED" },
                { label = "Search Bills Player", desc = "Search for a bill use player id if player is in game" },
            },
            MenuTittle = "Sheriffs Office",
            SubText = "Billing Menu",
            location = "billing location", --NEW
        },
        Menu1 = {
            elements = {
                { label = "Player",      desc = "Insert Player ID that you are Billing" },
                { label = "Penal Code",  desc = "Penal Code of the charge" },
                { label = "Bill Reason", desc = "Give a reason for this Bill" },
                { label = "Fine Amount", desc = "Negotiate Ammount to pay" },
                { label = "Pay Now",     desc = "pay later or pay the bill now" },
            },
            Pc = "PC ", --NEW
            Yes = "Yes",
            No = "No",
            MenuTittle = "Sheriffs Office",
            SubText = "Billing Menu",
            Description = "Description",
            Notes = "Notes",
            OfficerNotes = "Notes to officer",
            Attention = "!! Attention !!",
            Press = "press enter to confirm",
            Confirm = "Confirm",
            Reason = "Reason for billing",
            Reason1 = "Reason: ",
            Added = "Added",
            LawNotes = " Law notes",
            Archive = " Press to ARCHIVE when status is PAID",
            Amount = " Amount: ",
            Fine = "Fine Amount",
            issuedBy = "Issued By",
            dateIssued = "Date Issued",
            crime = "Crime",
            to = "To mr/ms",
            amount = "Amount",
            dateExp = "Date Exp",
            BillPaid = "Bill Paid",


        },
        Menu2 = {
            elements = {
                { label = "No Bills",  desc = "You Have No Bills to pay at this time", img = "folder_recipe_pamphlets" },
                { label = " Bill Of ", desc = "Law Notes",                             desc2 = "Press to Pay" },
                { label = "No Bills",  desc = "You Have No Bills to pay at this time", img = "folder_recipe_pamphlets" },
            },
            MenuTittle = "Sheriffs Office",
            SubText = "Billing Menu",
            Pc = "PC ", --NEW
        }
    },
    Crimes   = {
        Menu = {
            elements = {
                { label = "Crime Wtinessed", desc = "Crime witnessed at: ", desc2 = "press enter for more options", img = "generic_book" },
            },
            MenuTittle = "Crimes Wtinessed",
            SubText = "Crime Menu",
        },
        Menu2 = {
            elements = {
                {
                    label = "Wtiness Information",
                    desc = "Time: ",
                    desc2 = "Victim name: ",
                    desc3 = "Suspect details: ",
                    img = "blip_rc"
                },
                {
                    label = "Crime Location",
                    desc = " See Crime location on the map where was witnessed",
                    desc2 = "press enter and open map",
                    img = "blip_code_waypoint"
                },
                {
                    label = "Delete Report",
                    desc = "Deleting reports is a must, make sure you add this information to the reports book, then delete this so its optimised",
                    desc2 = "press enter to delete this entry",
                    img = "blip_destroy"
                },
            },
            MenuTittle = "Crimes Wtinessed",
            SubText = "Crime Menu",
            Desc = "Face was covered by a mask or bandana; could not tell gender nor age.",
            Name = " Name: ",
            Age = " Age: ",
            Gender = " Gender: ",


        }
    },
    Crafting = {
        Menu = {
            Ingrediens = "This recipe requires these Ingredients ",
            MenuTitle = "Carpenter Menu",
            MenuTitle1 = "Cooking Menu",
            SubText = "Workbench menu",
            SubText1 = "Stove menu",
            Cooking = "Cooking ...",   -- for progress bar
            Crafting = "Crafting ...", -- for progress bar
        },
        Menu1 = {
            elements = {
                { label = "Completed", desc = "You have already completed this task this task should be available when cooldown is over" },
                { label = "Available", desc = "Choose a task to perform, you will be paid upon completion",                              desc2 = "press enter to begin" },
            },
            MenuTitle = "Prison Tasks",
            SubText = "Tasks menu",
            Prompt = " Left to do: ",
            Canons = "Prison Cannons"
        },
    },
    Duty     = {
        Menu = {
            elements = {
                { label = "Go On Duty",            desc = "Time Off Duty", },
                { label = "Collect Pay" },
                { label = "Go Off Duty",           desc = "You are on duty, To go off duty you must have at least a few minutes on duty", desc2 = "Time On Duty" },
                { label = "See signed duty sheet " },
            },
            MenuTitle = "Sheriffs Office",
            SubText = "Duty Menu",
            TotalTime = "Total time on duty",
            Amount = "Amount to receive",
            Time = "Time is tracked in real time for either promotions or demotions.",
            List = "A list of Who is on duty at this town!",
            Ttile = "LAW ENFORCEMENT DUTY SHEET",
            Rank = "Rank",
            Name = "Name",
            Time1 = "Time",
            Salary = "Salary",
        },
    },
    Lockers  = {
        Menu = {
            Desc = "Lockers have permisions",
            MenuTitle = "Sheriffs Office",
            SubText = "Locker Menu",
        },
    },
    Wardrobe = {
        Menu = {
            elements = {
                { label = "Change Outfit",  desc = "Put on uniform everytime you are on duty",    img = "clothing_hat_000_police" },
                { label = "Undress",        desc = "Undress your uniform when you are off duty",  img = "clothing_hat_000_police" },
                { label = "Take off badge", desc = "Take off your badge to show you are off duty" },
                { label = "Put on badge",   desc = "Put on your badge to show you are on duty" },
            },
            MenuTitle = "Sheriffs Office",
            SubText = "Wardrobe Menu",
        },
    },
    Rack     = {
        Menu = {
            elements = {
                { label = "Rifles",     desc = "Choose this option to see all riffles or store" },
                { label = "Revolvers",  desc = "Choose this option to see all revolvers or store" },
                { label = "Empty Slot", desc = "Slot available",                                  desc2 = "Press enter to store weapon" },
                { label = "Empty Slot", desc = "Slot available",                                  desc2 = "Press enter to store weapon" },
            },
            Stored = "Weapon stored by: ",
            Press = "Press enter to take weapon",
            Type = "Weapon Type: ",
            MenuTitle = "Gun Rack",
            SubText = "Weapon Types",
            Slot = "Slot ",
            storerifles = "store rifles",
            storerevolvers = "store revolvers",
            promptrack = "GunRack",
        },

    },
    Sheriff  = {
        Menu = {
            elements = {
                { label = "Employees Management", desc = "Manage Law employees from this town ",  img = "folder_recipe_pamphlets" },
                { label = "Ledger Book",          desc = "Open Law ledger ",                      img = "money_moneystack" },
                { label = "Stables Management",   desc = "Buy horses and wagons for the Law",     img = "generic_horse_mod" },
                { label = "Billing Book",         desc = "View and manage Billing for this town", img = "document_wild_man_journal" },
                { label = "Wanted Board",         desc = "View and manage wanted board",          img = "document_bounty_poster" },
            },
            Options = "press for more options",
            MenuTitle = "Sheriffs Office",
            SubText = "Sheriff Menu",
        },
        Menu1 = {
            elements = {
                { label = "Deposit",  desc = "Deposit into Ledger",  img = "selection_arrow_right" },
                { label = "Withdraw", desc = "Withdraw from Ledger", img = "selection_arrow_left" },
                { label = "Hop",      desc = "Hop ammounts",         img = "selection_arrow_right" },

            },
            Confirm = "Confirm amount",
            Press = "Press enter to confirm",
            Balance = "Balance: ",
            Pockets = "Pockets: ",
            Description = "Money balance",
            MenuTitle = "Sheriffs Office",
            SubText = "Ledger Menu",
        },
        Menu2 = {
            elements = {
                { label = "Horse Stable", desc = "Buy Horses for the Law ", img = "generic_horse_mod" },
                { label = "Wagon Stable", desc = "Buy Wagons for the Law ", img = "generic_horse_mod" },


            },
            Currently = "you have currently ",
            Horses = "in your stables of these horses",
            Wagons = "in your stables of these wagons",
            MenuTitle = "Sheriffs Office",
            SubText = "Stables Menu",
        },
        Menu3 = {
            elements = {
                { label = "Hire Lawmen",    desc = "Hire Law Men for this town",                                                     img = "document_bounty_poster" },
                { label = "Fire Lawmen",    desc = "Fire this employee Use his ID" },
                { label = "Promote/Demote", desc = "Promote this employee or demote him Use his ID and new grade" },
                { label = "Suspension",     desc = "Player is suspened from doing any law activities unsuspended to allow them back" },
                { label = "Suspension",     desc = "Suspend player from doing any law activities" },


            },
            Employe = "Name: ",
            Date = "Date started: ",
            MenuTitle = "Sheriffs Office",
            SubText = "Employees Menu",
            -------------------------------NEW------------------------------------
            Allperms = "All Permissions: YES",
            Bossmenu = "Boss Menu: YES",
            Billingmenu = "Billing Menu: YES",
            Negotiate = "Negotiate Fines: YES",
            Hang = "Hang Player: YES",
            AllpermsNo = "All Permissions: NO",
            BossmenuNo = "Boss Menu: NO",
            BillingmenuNo = "Billing Menu: NO",
            NegotiateNo = "Negotiate Fines: NO",
            HangNo = "Hang Player: NO",
            Records = "Records Menu: NO",
            JobAndRank = "Job & Rank",
            Salary = "Salary: $",
            Permissions = "PERMISSIONS",
            For = "For: ",
            PressEnter = "press enter to add player id",
            EmployeeMenu = "Employee Menu",
            SubMenu = "SubMenu",

        },
        Menu4 = {
            elements = {
                { label = "Add New Poster",     desc = "Add a wanted poster make sure you have all the details needed, if image they must be posted somewhere like discord" },
                { label = "Person Name",        desc = "Insert Name of the wanted player if you know it, or leave empty it will be added as N/A" },
                { label = "Person Gender",      desc = "insert gender of wanted player if you know it, or leave empty it will be added as N/A" },
                { label = "Bounty date",        desc = "insert date of today for the poster" },
                { label = "Bounty description", desc = "add poster description of what player did / look like / last seen if any" },
                { label = "Person Image",       desc = "post the image in a discord channel then copy link and past here, images must be aproved before adding it here" },
                { label = "Poster type",        desc = "the poster type available  types are ( wanted reward thieve) this will set the poster type " },
                { label = "Bounty Reward",      desc = "the reward amount for the capture" },
                { label = "Confirm",            desc = "confirm and add poster to the wanted board bounty hunters will be notified a post was added" },


            },
            Reward = "REWARD: ",
            Date = "DATE: ",
            Edit = "Press to edit",
            Press = "press enter to confirm",
            MenuTitle = "Sheriffs Office",
            SubText = "Billing Menu",
            Added = "Added",
            Wanted = "wanted",
            Options = {
                label = "Bounty for ",
                Desc = "name was added " .. "<br><br>" .. "Name: ",
                Desc1 = "gender was added " .. "<br><br>" .. "Gender: ",
                Desc2 = "date was added " .. "<br><br>" .. "Date: ",
                Desc3 = "description was added " .. "<br><br>" .. "Description: ",
                Desc4 = "image link was added ",
                Desc5 = "Poster type was added " .. "<br><br>" .. "Type: ",
                Desc6 = "You have added a reward for this poster" .. "<br><br> Reward: ",
            }
        },
        Menu5 = {
            elements = {
                { label = "Edit Poster",   desc = "Edit this poster for the wanted board" },
                { label = "Delete Poster", desc = "Delete this poster from the wanted board" },
            },
            ID = "Poster ID: ",
            Name = "Bounty Name: ",
            Date = "Date: ",
            Reward = "Reward: ",
            By = "Added by: ",
            Press = "press enter to confirm removal",
            MenuTitle = "Sheriffs Office",
            SubText = "Wanted Menu",

        },


    },
    Stable   = {
        Menu = {
            elements = {
                { label = "Horses", desc = "Access the stables", img = "generic_horse_mod" },
                { label = "Wagons", desc = "Access the stables", img = "generic_horse_mod" },
            },
            Allowed = "allowed",
            NotAllowed = "not allowed",
            MenuTitle = "Sheriffs Office",
            SubText = "Stable Menu",
            InStables = "Wagon is in the stables press enter",
            Taken = "This Wagon was taken out already",
            InStables1 = "Horse is in the stables press enter",
            Taken1 = "This Horse was taken out already",
        },
    }
}

Translation.Misc = {

    Duty = {
        clockIn = "CLOCK IN",
        clockOut = "CLOCK OUT",
        clockedIn = "Clocked In",
        clockedOut = "Clocked Out",
        noOfficersOnDuty = "No officers currently on duty in ",
        timeOnDuty = "Time on duty: ",
        location = "Location: ",
        requestBackup = "REQUEST BACKUP",
        requestToGoOnDuty = "REQUEST TO GO ON DUTY",
        lastLocation = "Last location: ",
        online = "ONLINE",
        offline = "OFFLINE",
        selectMonth = "Select Month to delete",
        chooseMonth = "Choose Month",
        deleteMonth = "Delete Month",
        cancel = "Cancel",
        activityHeatmap = "Activity Heatmap",
        clickOnDayToSeeSessions = "Click on a day to see sessions",
        noSessionsOnDate = "No sessions on ",
        sessionsForDate = "Sessions for ",
        start = "Start: ",
        End = "End: ",
        duration = "Duration: ",
        money = "Money: ",
        totalDutyTime = "Total Duty Time: ",
        mostUsedLocation = "Most Used Location: ",
        currentLastLocation = "Current/Last Location: ",
        totalMoneyEarned = "Total Money Earned: ",
        cleanData = "Clean Data",
        allLocations = "All Locations",
        singleLocation = "Single Location",
        dutyList = "Duty List",
        dutyTimes = "Duty Times",
    },
    Inputs = {
        Billing = {
            Confirm = "Confirm",
            PlaceHolder = "Status",
            Header = "Search Bill",
            PlaceHolder1 = "Player ID",
            Header1 = "Issue Bill",
            PlaceHolder2 = "Amount",
            PlaceHolder3 = "type here",
            Header2 = "Bill Reason",
            Header3 = "Hire Lawmen",
            PlaceHolder4 = "Fine Ammount",
        },
        Sheriff = {
            Confirm = "Confirm",
            PlaceHolder = "PLAYER ID",
            Header = "Fire Lawmen",
            PlaceHolder1 = "Grade",
            Header1 = "Promote/Demote",
        },
        Wanted = {
            Confirm = "Confirm",
            PlaceHolder = "Name",
            Header = "Add Wanted Poster",
            PlaceHolder1 = "Gender",
            PlaceHolder2 = "Date",
            PlaceHolder3 = "Description",
            PlaceHolder4 = "Image",
            PlaceHolder5 = "Type",
            PlaceHolder6 = "Reward",
        },
        Stables = {
            Confirm = "Confirm",
            PlaceHolder = "Player ID",
            Header = "Seat Player",
        }

    },
    Prompts = {
        Stables = {
            PromptName = "Press",
            PromptMenuKey = `INPUT_INTERACT_LOCKON_ANIMAL`,
            PromptParkkey = `INPUT_JUMP`,

            PromptName1 = "PutIn/TakeOut",
            PromptKey1 = `INPUT_FRONTEND_ACCEPT`,
            PromptName2 = "Inventory",
            PromptKey2 = `INPUT_OPEN_SATCHEL_MENU`,
            PromptName3 = "Lock Pick",
            PromptKey3 = `INPUT_INTERACT_LOCKON_ANIMAL`,
            PromptName4 = "Doors",
            PromptKey4 = `INPUT_INTERACT_LOCKON_ANIMAL`,
            PromptLabel = "Wagon Actions",
            PromptName5 = "Unlock",
            PromptName6 = "Lock",
        },
        LawActions = {
            PromptSearchName = "Search",
            PromptSearchKey = `INPUT_INTERACT_LOCKON_ANIMAL`,
            PromptCuffName = "Cuff",
            PromptCuffKey = `INPUT_FRONTEND_ACCEPT`,
            PromptUnCuffName = "Remove cuffs",
            PromptHogtieName = "Hogtie",
            PromptUnHogtieName = "Cut free",
            PromptHogtieKey = `INPUT_ENTER`,
            PromptLabel = "Law actions | player ID: ",
            PromptDragName = "Drag",
            PromptDragKey = `INPUT_AIM_IN_AIR`,
        },
        Inspection = {
            PromptName = "Inspect Body",
            PromptKey = `INPUT_CONTEXT_A`,

        },
        Doors = {
            PromptName = "press",
            PromptKey = `INPUT_INTERACT_LOCKON_ANIMAL`,
            Open = "~t6~Open",
            Close = "~e~Close",
            Open1 = "~t6~Opened",
            Close1 = "~e~Closed",
        },
        Prison = {
            PromptName = "Bring Boat",
            PromptKey = 0xDFF812F9,
            PromptName1 = "Take Prisoner",
            PromptKey1 = `INPUT_INTERACT_LOCKON_ANIMAL`,
            PromptName2 = "Park Boat",
            PromptKey2 = `INPUT_CONTEXT_A`,
            PromptName3 = "Release me",
            PromptKey3 = 0xDFF812F9,
            PromptName4 = "Time Left",
            PromptKey4 = `INPUT_INTERACT_LOCKON_ANIMAL`,
            PromptName5 = "Tasks Available",
            PromptKey5 = 0xDFF812F9,
            PromptName6 = "Press",
            PromptKey6 = `INPUT_CONTEXT_A`,
            PromptLabel = "Underground Door",
            PromptName7 = "Rotate",
            PromptKey7 = `INPUT_PREV_WEAPON`,
            PromptName_1 = "Food Storage",
            PromptName_2 = "Ready Meals",
            PromptName_3 = "Workbench",
            PromptName_4 = "Tool Shed",
            PromptName_5 = "Material Shed",
        },
    },
    Items = {
        Bill = "Bill for: %s amount of $%d <br> Issued by %s town of %s date: %s <br> Due date: %s",
        Sample = "This is a sample bullet taken from a crime scene to be examined" .. "<br> detective : %s Vitcim  %s",
        Extract = "Weapon: %s <br> Ammo: %s Serial No: %s Evidence No: %s Victim: %s",
        ExtractMessage = "Document of a crime scene dated: %s",
        Tool = "Tool is Broken",
        Search = "Search Inventory",
    },
    Report = {
        NoPerm = "You don't have permission",
        NoReports = "No reports found",
        NoJail = "Charge with PC %s  does not require jail time, this report was canceled. You can't jail if penal code does not require it.",
        NotValid = "Charge with PC %s not found in penal code or does not require jail time. Add a valid penal code, this report was canceled!",
        DoesNotHave = "Charges were null you must add charges this report was canceled",
        NotInGame = "Suspect/s not found or id is wrong or player left the server, report wasn't added reports can only be done if players are in game",
        Update = "Player is already jailed, you cant add a new record to jail again, for that you must update instead in jail records tab",
        NoName = "There's no records with this name name must be exaclty the same can be lower case or upper case",
        WantedBoard = "Wanted board auto set wanted is Enabled this player was already set to the wanted board no need to do it again.",
        NoCases = "There's no cases",
        InvName = "Investigation Locker"
    },
    Investigation = {
        DeleteAll = "Delete ALL", -- NEW 2/12/2026
        DeletedCrimes = "You have reset all crimes",
        Murdered = "Victim Murdered",
        BodyExamined = "Body Examined by: ",
        NoBullet = "No Bullet found",
        NoWound = "No Bullet wound found",
        FoundMarks = "Found marks of handfight ",
        FoundMarks1 = "Found marks of melee weapon",
        Inspect = "Inspect Body",
        BulletFound = "Bullet Found",
        WoundFound = "Bullet Wound Found",
        Extract = "Extract Bullet",
        InspectSample = "Inspect Bullet Sample",
        Looking = "Looking for Traces",
        Something = "There seems to be something ",
        BulletUsed = "Bullet Used",
        WeaponUsed = "Weapon Used",
        HorseTheft = "Horse Theft",
        VehicleTheft = "Vehicle Theft",

    },
    Commands = {
        Badge = "show badge to other players",
        Billing = "Bring Billing menu for Law",
        Edit = "edit badge position",
        PutBadge = "if on duty put on badge or remove",
        Open = "Open Reports Book (MDT) ",
        Crimes = "Open Crimes Menu, this is where NPC witness reports are stored",
        Duty = "Use command to go on duty"
    }

}
