# Windows Backup Setup Guide
## Veeam Agent (Local) + Duplicati (Cloud)

---

## PART 1: Veeam Agent Free (Local Backup to D: Drive)

### Step 1: Download & Install
1. Go to: https://www.veeam.com/windows-endpoint-server-backup-free.html
2. Click "Download Free" (requires email registration)
3. Run installer, select "Workstation" mode

### Step 2: Create Backup Job
1. Open Veeam Agent
2. Click hamburger menu (☰) → **Add New Job**
3. **Job Name:** `Daily-System-Backup`
4. **Backup Mode:** Choose one:
   - "Entire computer" (full system, recommended)
   - "Volume level backup" (select C: drive)
   - "File level backup" (specific folders only)

### Step 3: Configure Destination
1. **Destination:** Local storage
2. **Path:** `D:\Backups\Veeam`
3. Create this folder first if needed

### Step 4: Schedule
1. **Run job automatically:** Yes
2. **Daily at:** 2:00 AM (or when PC is typically on)
3. **Restore Points:** Keep 7-14 (adjust based on D: drive space)

### Step 5: Advanced Settings
1. Click "Advanced" in job settings
2. **Backup tab:**
   - Enable "Create synthetic full backups periodically" → Weekly
   - Enable compression: Optimal
3. **Storage tab:**
   - Enable deduplication
4. **Notifications:** Add email if desired

---

## PART 2: Duplicati (Cloud Backup)

### Step 1: Download & Install
1. Go to: https://www.duplicati.com/download
2. Download Windows .msi installer
3. Install with defaults (runs as Windows service)

### Step 2: Access Web UI
1. Open browser: http://localhost:8200
2. Or: Start menu → Duplicati

### Step 3: Create Backup Job
1. Click "Add backup" → "Configure a new backup"
2. **Name:** `Cloud-Important-Files`
3. **Encryption:** AES-256 (set a strong passphrase - SAVE THIS!)

### Step 4: Choose Cloud Destination
Pick one of these:

**Option A: OneDrive (if you have Microsoft 365)**
- Backend: Microsoft OneDrive v2
- AuthID: Click link to authenticate
- Path: /Backups/Duplicati

**Option B: Google Drive**
- Backend: Google Drive
- AuthID: Click link to authenticate
- Path: /Backups/Duplicati

**Option C: Backblaze B2 (cheapest for large backups)**
- Backend: Backblaze B2 Cloud Storage
- Bucket: Create at backblaze.com first
- B2 Application ID & Key: From B2 dashboard

### Step 5: Select Source Folders
Add these paths (adjust to your setup):

```
C:\Users\<YourUsername>\.claude\          # Claude CLI settings
C:\Users\<YourUsername>\Documents\        # Documents
C:\Users\<YourUsername>\Desktop\          # Desktop
C:\SnoopLabs\                             # Your projects
C:\GithubRepo\                            # GitHub repos
```

**Exclude filters (add these):**
```
node_modules/
.git/objects/
*.log
Thumbs.db
desktop.ini
```

### Step 6: Schedule
1. **Run backup:** Daily at 3:00 AM
2. **Keep backups:**
   - All backups younger than: 7 days
   - One backup per day older than: 7 days, keep for 30 days
   - One backup per week older than: 30 days, keep for 90 days

---

## PART 3: What Gets Backed Up Where

| Data | Veeam (D: Drive) | Duplicati (Cloud) |
|------|------------------|-------------------|
| Windows OS | ✅ | ❌ |
| Installed Programs | ✅ | ❌ |
| C:\SnoopLabs | ✅ | ✅ |
| C:\GithubRepo | ✅ | ✅ |
| Documents | ✅ | ✅ |
| .claude settings | ✅ | ✅ |
| D: Drive itself | ❌ | Optional |

---

## PART 4: Quick Verification Checklist

After setup, verify:

- [ ] Veeam: Run manual backup, check D:\Backups\Veeam has files
- [ ] Veeam: Test recovery wizard (don't restore, just verify)
- [ ] Duplicati: Run manual backup, check cloud storage
- [ ] Duplicati: Test restore of a single file
- [ ] Both: Confirm scheduled jobs appear in task lists

---

## PART 5: Recovery Scenarios

### Scenario: Deleted file
→ Use **Duplicati** web UI → Select backup → Browse → Restore file

### Scenario: System won't boot
→ Boot from **Veeam Recovery Media** (create in Veeam: ☰ → Create Recovery Media)
→ Restore entire system from D:\Backups\Veeam

### Scenario: Hard drive failed
→ Replace drive → Boot from Veeam Recovery Media → Restore

### Scenario: Ransomware/virus
→ Disconnect from network
→ Boot from Veeam Recovery Media
→ Restore to before infection date

---

## Important Notes

1. **Test your backups** - A backup you haven't tested is not a backup
2. **Veeam Recovery Media** - Create this USB drive NOW, store it safely
3. **Duplicati passphrase** - Store it in a password manager, you NEED it to restore
4. **3-2-1 Rule:** 3 copies, 2 different media types, 1 offsite (cloud)

---

## Maintenance

**Monthly:**
- Verify Veeam jobs completed (check D:\Backups\Veeam)
- Verify Duplicati jobs (check cloud storage)
- Test restore one random file

**Quarterly:**
- Review what's being backed up
- Clean old backups if space needed
- Update Veeam Recovery Media if major Windows updates

