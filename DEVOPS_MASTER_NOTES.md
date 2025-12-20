# DEVOPS MASTER NOTES (A–Z)
## Absolute Beginner to Future-Proof DevOps Engineer

Author: Arjun Bishta  
Level: Zero → Professional  
Daily Time: 2+ hours  
Target: Job + Extra Income in 6 months

==================================================

## SECTION 0: BASIC DEFINITIONS (VERY IMPORTANT)

### What is DevOps?
DevOps is a combination of Development and Operations that focuses on automation, continuous delivery, and faster software deployment.

### Why DevOps is Future Proof?
- Automation based
- Cloud driven
- High demand
- AI cannot fully replace infra decision making

==================================================

## DAY 1: LINUX BASICS (FILE & DIRECTORY)

### What is Linux?
Linux is an open-source operating system used in servers, cloud, and DevOps environments.

### Commands:
pwd        → show current directory  
ls -l      → list files with permissions  
mkdir      → create directory  
cd         → move inside directory  
touch      → create file  
cp         → copy file  
mv         → move/rename file  
rm         → delete file  

### Practice Done:
- Created linux_practice directory
- Created, copied, renamed, deleted files
- Created backup folder

### Interview Question:
Q: How do you manage files in Linux?
A: Using commands like ls, cp, mv, rm, mkdir.

==================================================

## DAY 2: LINUX PERMISSIONS & OWNERSHIP

### Permission Format:
-rwxr-xr--

r = read (4)  
w = write (2)  
x = execute (1)

### Numeric Permissions:
755 = rwx r-x r-x  
644 = rw- r-- r--

### Commands:
chmod 755 file  
chmod u+x file  
chmod g+w file  
chown user file  

### IMPORTANT:
Execute permission on directory is required to enter it.

### Interview Question:
Q: Why execute permission is needed on directories?
A: Without execute permission, you cannot access the directory.

==================================================

## DAY 3: SHELL SCRIPTING (AUTOMATION)

### What is Shell Script?
A shell script is a file containing Linux commands that automate tasks.

### Shebang:
#!/bin/bash  
Tells OS which interpreter to use.

### Script Example:
first_script.sh  
cleanup_logs.sh

### Interview Question:
Q: What is shebang?
A: It defines which shell executes the script.

==================================================

## DAY 4: CRON JOBS (AUTOMATION WITHOUT HUMAN)

### What is Cron?
Cron is a Linux scheduler used to run tasks automatically at fixed times.

### Cron Format:
* * * * *
(min hour day month week)

### Example:
*/5 * * * * /script.sh >> cron.log 2>&1

### Interview Question:
Q: How do you schedule tasks in Linux?
A: Using crontab and cron jobs.

==================================================

## DAY 5: GIT & GITHUB (VERY IMPORTANT)

### What is Git?
Git is a version control system to track code changes.

### What is GitHub?
GitHub is a cloud platform to store Git repositories.

### Git Installation:
yum install git -y

### Git Basic Commands:
git init  
git add .  
git commit -m "message"  
git push  

--------------------------------------------------

## GITHUB AUTHENTICATION (CRITICAL)

### Password authentication is NOT supported.

Two methods:
1. HTTPS + PAT (token)
2. SSH (BEST PRACTICE)

--------------------------------------------------

## SSH AUTHENTICATION (FULL PROCESS)

### Step 1: Generate SSH Key
ssh-keygen -t ed25519 -C "email"

### Step 2: Add key to agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

### Step 3: Add public key to GitHub
cat ~/.ssh/id_ed25519.pub  
(Paste into GitHub → Settings → SSH Keys)

### Step 4: Test
ssh -T git@github.com

Expected:
Hi username!

--------------------------------------------------

## USING SAME GITHUB ID ON OTHER SYSTEM

### On New System:
1. Install git
2. Generate new SSH key
3. Add key to same GitHub account
4. Clone repo using SSH

git clone git@github.com:Bishta-creator/devops-journey.git

--------------------------------------------------

## WHY SSH IS IMPORTANT?
- Secure
- No password
- Industry standard

Interview Answer:
I use SSH keys for secure GitHub authentication.

==================================================

## HOW I STUDY DAILY (RULE)

1. Learn topic
2. Practice commands
3. Update DEVOPS_MASTER_NOTES.md
4. Save scripts in scripts/
5. git add .
6. git commit
7. git push

==================================================

## FINAL TARGET

- Linux expert
- Automation engineer
- GitHub portfolio
- Docker + Cloud (next)
- Job + freelancing income

==================================================
