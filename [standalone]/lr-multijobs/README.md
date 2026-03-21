# LR-MultiJobs - VORP Core Multi-Job System

A **fully open-source** multi-job system for **RedM** servers powered by **VORP Core** that integrates seamlessly with **syn_society** to provide realistic job management where players can hold multiple positions while maintaining business hierarchy control.

---

## Features

* **Full syn_society integration** - Players only see jobs they've been hired for by business owners
* **Multiple job management** - Hold multiple positions while maintaining one active job
* **Business owner controlled** - Jobs are managed through syn_society's hire/fire/promote system
* **Clean VORP-Menu interface** - Switch between hired positions with `/myjobs`
* **Real-time synchronization** - Updates instantly when hired, fired, or promoted
* **Job cooldown system** - Prevents rapid job switching abuse
* **Salary integration** - Pulls salary data from syn_society tables
* **Grade management** - Full support for job ranks and promotions
* **Group-based limits** - Different job limits for user/vip/admin groups
* **VORP Core compliant** - Uses current VORP Core API with proper job lifecycle events
* **Localized** - English provided, easily add more languages

---

## Requirements

| Resource | Purpose |
|----------|---------|
| [`vorp_core`](https://github.com/VORPCORE) | Character & job framework |
| [`vorp_menu`](https://github.com/VORPCORE) | Client menu system |
| [`syn_society`](https://github.com/synsociety) | Job management system |
| [`oxmysql`](https://github.com/overextended/oxmysql) | Database operations |

Requires `fx_version 'cerulean'` and **Lua 5.4**.

---

## Installation

### 1. Database Setup
Run the provided SQL file to create the multi-job tracking table:
```sql
-- Execute player_multijobs.sql in your database
-- This creates the table and migrates existing job data
```

### 2. Resource Installation
1. Extract the resource to your `resources` folder
2. Ensure proper loading order in `server.cfg`:
```cfg
ensure vorp_core
ensure vorp_menu
ensure oxmysql
ensure syn_society
ensure lr-multijobs
```

### 3. Configuration
Edit `shared/config.lua` to match your server's jobs:
```lua
Config.jobs = {
    police = { label = 'Police' },
    doctor = { label = 'Doctor' },
    val_gunsmith = { label = 'Valentine Gunsmith' },
    -- Add your server's jobs here
}
```

### 4. Start the Resource
```
start lr-multijobs
```

Existing employed players will automatically sync to the new system.

---

## Configuration

### Basic Settings (`shared/config.lua`)

```lua
Config = {}

Config.locale = 'en'  -- Language file to use
Config.Debug = true   -- Enable debug logging

-- Syn Society Integration
Config.UseSynSociety = true
Config.AlwaysShowUnemployed = true

-- Job switching cooldown (seconds)
Config.JobSwitchCooldown = 300  -- 5 minutes

-- Job display labels
Config.jobs = {
    police = { label = 'Police Department' },
    doctor = { label = 'Medical Practice' },
    -- Add more jobs matching your syn_society config
}

-- Group-based job limits
Config.GroupMaxJobs = {
    ['user'] = 2,   -- Regular players: 2 jobs max
    ['vip'] = 5,    -- VIP players: 5 jobs max  
    ['admin'] = 10  -- Admins: 10 jobs max
}

Config.DefaultMaxJobs = 2  -- Default if group not found
```

---

## How It Works

### The Multi-Job Flow

1. **Hiring Process**
   - Business owner hires player through syn_society menu
   - Player is automatically added to `player_multijobs` table
   - Player receives notification and can access the job via `/myjobs`

2. **Job Switching**
   - Player opens `/myjobs` menu
   - Sees all jobs they've been hired for
   - Can switch between jobs (with cooldown)
   - Current job is clearly marked

3. **Management Actions**
   - Promotions/demotions sync automatically from syn_society
   - Firing removes job from player's available jobs
   - All actions update in real-time

### Example Workflow

```
1. Saloon owner hires John as Bartender (Grade 1)
2. John also gets hired at Stables as Horse Trainer (Grade 0)
3. John types /myjobs and sees:
   - Saloon Bartender (Grade 1) (CURRENT)
   - Stables Horse Trainer (Grade 0)
   - Unemployed
4. John switches to Horse Trainer job
5. Saloon owner promotes him to Grade 2
6. When John switches back, he's now Grade 2 Bartender
```

---

## Commands

| Command | Description |
|---------|-------------|
| `/myjobs` | Open multi-job menu |
| `/checkjob` | Display current job info |
| `/cleanmyjobs` | Clean duplicate job entries |

### Admin Commands
All standard syn_society management commands work:
- Hiring/firing through business menus
- Promotions/demotions sync automatically
- Grade changes update in real-time

---

## Database Structure

Creates one additional table that integrates with syn_society:

```sql
CREATE TABLE `player_multijobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `charidentifier` int(11) NOT NULL,
  `job` varchar(50) NOT NULL,
  `jobgrade` int(11) NOT NULL DEFAULT 0,
  `hired_date` timestamp DEFAULT CURRENT_TIMESTAMP,
  `last_active` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive','fired') DEFAULT 'inactive',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_character_job` (`charidentifier`, `job`)
);
```

This works alongside syn_society's existing tables for salary and billing integration.

---

## VORP Core Integration

### Job Lifecycle Events

The system properly implements VORP Core job events:

```lua
-- Server-side events fired by the system
'vorp:playerJobChange'        -- When player switches jobs
'vorp:playerJobGradeChange'   -- When player grade changes

-- Custom multijob events
'lr-multijobs:server:onJobChanged'      -- Job switch with old/new job
'lr-multijobs:server:onJobGradeChanged' -- Grade change notification
'lr-multijobs:server:onJobHired'        -- When hired via syn_society
'lr-multijobs:server:onJobFired'        -- When fired via syn_society
```

### Character Management

Uses current VORP Core API properly:
```lua
local user = Core.getUser(source)
local character = user.getUsedCharacter
character.setJob(jobName, false)
character.setJobGrade(grade, false)
```

---

## Security Features

- **Server-side validation** for all job changes
- **Business owner authorization** required for hiring/firing
- **Cooldown system** prevents job switching abuse
- **Character-based tracking** using proper VORP identifiers
- **Real-time synchronization** with syn_society events
- **Database integrity** with unique constraints and validation

---

## Troubleshooting

### Common Issues

**"Config not loaded" error:**
- Ensure `shared/config.lua` exists and has proper syntax
- Check file permissions
- Verify fxmanifest.lua paths are correct

**Menu shows no jobs:**
- Player hasn't been hired for any positions via syn_society
- Check `player_multijobs` table has entries
- Use `/checkjob` to verify current status

**Jobs not syncing with syn_society:**
- Verify syn_society is running and working
- Check database connectivity
- Enable `Config.Debug = true` for detailed logging
- Ensure syn_society events are firing

**Can't switch jobs:**
- Check cooldown period (default 5 minutes)
- Verify player is still employed at target job
- Check server console for error messages

### Debug Mode

Enable detailed logging by setting:
```lua
Config.Debug = true
```

This will show:
- Job change attempts
- Database queries
- Event triggers
- Sync operations
- Error details

---

## Localization

Add custom languages by creating files in `languages/` folder:

```lua
-- languages/es.lua
Locales['es'] = {
    ['cl_lang_3'] = 'Mis Trabajos',
    ['sv_job'] = 'Trabajo cambiado a',
    ['sv_no_jobs'] = 'No has sido contratado para ningún trabajo',
    -- Add more translations...
}
```

Then set `Config.locale = 'es'` in config.lua.

---

## API / Events

### Client Exports

```lua
-- Check if menu is currently open
local isOpen = exports['lr-multijobs']:IsMenuOpen()

-- Force close menu
exports['lr-multijobs']:CloseMenu()

-- Open jobs menu
exports['lr-multijobs']:OpenMenu()
```

### Server Events

```lua
-- Open player's job menu
TriggerClientEvent('lr-multijobs:client:openmenu', source)

-- Refresh menu if open  
TriggerClientEvent('lr-multijobs:client:refreshmenu', source)

-- Send notification
TriggerClientEvent('lr-multijobs:client:notify', source, message, duration)
```

---

## File Structure

```
lr-multijobs/
├── fxmanifest.lua           # Resource manifest
├── locale.lua               # Localization system
├── languages/
│   └── en.lua              # English translations
├── shared/
│   └── config.lua          # Main configuration
├── client/
│   └── c-main.lua          # Client-side logic
├── server/
│   └── s-main.lua          # Server-side logic
├── player_multijobs.sql    # Database setup
└── README.md               # This file
```

All files are **fully editable** and **open source**.

---

## Changelog

### Version 2.1.0
- **Full VORP Core compliance** with current API
- **Enhanced syn_society integration** with real-time sync
- **Proper job lifecycle events** implementation
- **Database optimization** with indexes and stored procedures
- **Improved error handling** and validation
- **Enhanced menu system** with better state management
- **Security improvements** with server-side validation
- **Performance optimizations** for large player counts

### Version 2.0.3 (Original)
- Basic multi-job functionality
- syn_society integration
- VORP menu system
- Job switching with cooldown

---

## Support & Contributing

- **Issues**: Report bugs via GitHub issues
- **Documentation**: Check this README first
- **Debug**: Enable `Config.Debug = true` for detailed logs
- **Community**: Join RedM development communities for assistance

This is **open source** software. Contributions, bug reports, and feature requests are welcome.

---

## Credits

- **LR-Studio** - Original development
- **VORP Core Team** - Framework integration
- **Syn_Society** - Job management system
- **Community Contributors** - Bug reports and improvements

---

## License

This project is open source. You may:
- Use on your server
- Modify and customize
- Share improvements with the community

**Please respect the original authors and maintain attribution.**

---

**Version:** 2.1.0  
**Compatibility:** RedM with VORP Core & Syn_Society  
**Last Updated:** 2025