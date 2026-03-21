# MenuAPI Debug Tool for RedM/VORP Society System

This debug tool will help you diagnose issues with your society/job menu system, specifically with deposit/withdraw functions.

## Installation

1. Create a new folder in your resources called `menuapi_debug`
2. Copy all these files into that folder:
   - fxmanifest.lua
   - menuapi_debug_client.lua
   - menuapi_debug_server.lua

3. Add to your `server.cfg`:
   ```
   ensure menuapi_debug
   ```

4. Restart your server or use:
   ```
   refresh
   ensure menuapi_debug
   ```

## Client Commands (In-Game F8 Console)

### `/debughelp`
Shows all available debug commands

### `/testinput`
Tests the input prompt system to see if keyboard input is working

### `/debuginfo`
Shows your current player information including:
- Coordinates
- Job name
- Job grade
- Society ledger balance

### `/testdeposit [amount]`
Tests depositing money to your society ledger
Example: `/testdeposit 100` deposits $100

## Server Console Commands

### `checkledger [job]`
Check the ledger balance for a specific job
Example: `checkledger police`

### `addledger [job] [amount]`
Add money to a job's ledger (useful for testing)
Example: `addledger police 1000`

### `setledger [job] [amount]`
Set a job's ledger to a specific amount
Example: `setledger police 5000`

## What the Debug Tool Does

### Automatic Checks (on startup):
- ✓ Checks if WarMenu is loaded
- ✓ Checks if VORP Core is available
- ✓ Checks if input functions are available
- ✓ Monitors menu open/close events

### When you use commands:
- Shows detailed logs of what's happening
- Captures input prompts
- Displays server responses
- Shows database queries

## Troubleshooting Steps

1. **Start the debug resource:**
   ```
   ensure menuapi_debug
   ```

2. **In-game, open F8 console and type:**
   ```
   /debuginfo
   ```
   This will show if your job and ledger are set up correctly

3. **Test the input system:**
   ```
   /testinput
   ```
   If this doesn't show a keyboard prompt, your input system is broken

4. **Try a test deposit:**
   ```
   /testdeposit 100
   ```
   Watch the F8 console for detailed error messages

5. **Check server console:**
   Look for any red error messages when you try to deposit/withdraw

## Common Issues and Solutions

### Issue: Input prompt doesn't appear
**Solution:** Check F8 console after running `/testinput`. If you see errors about DisplayOnscreenKeyboard, you may need to update your game build.

### Issue: "No ledger entry found"
**Solution:** Run in server console:
```
setledger police 0
```
This creates the ledger entry.

### Issue: Money doesn't deposit
**Solution:** Check that:
1. You have enough money (check with `/debuginfo`)
2. The society_ledger table exists in your database
3. Your job name matches exactly (case-sensitive)

## Reading Debug Output

### Green messages (SUCCESS):
Everything is working correctly

### Yellow messages (WARNING):
Something is happening (like a menu closing) - not necessarily an error

### Red messages (ERROR):
Something is broken and needs to be fixed

## Example Debug Session

```
[MenuAPI Debug] === MenuAPI Debug Started ===
[MenuAPI SUCCESS] WarMenu is loaded ✓
[MenuAPI SUCCESS] VORP Core exports available ✓
[MenuAPI SUCCESS] VORP Core initialized ✓
[MenuAPI SUCCESS] DisplayOnscreenKeyboard available ✓
```

If you see ✗ marks instead of ✓, those are the problems that need fixing.

## After Debugging

Once you've identified and fixed the issue, you can:
1. Stop the debug resource: `stop menuapi_debug`
2. Or leave it running for ongoing monitoring (minimal performance impact)

## Support

If you're still having issues after using this debug tool, provide:
1. Screenshots of the F8 console output
2. Screenshots of the server console
3. The exact commands you ran
4. Any red error messages
