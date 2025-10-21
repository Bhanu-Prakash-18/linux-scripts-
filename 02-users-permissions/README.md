# 02 - User & Permissions Scripts

This folder contains scripts to manage Linux users and folder permissions for DevOps practice.

---

## 1️⃣ create-users.sh

**Purpose:**  
Create three Linux users: `admin`, `dev`, `tester`.

**How it Works:**  
1. `users=("admin" "dev" "tester")` → Defines an array of usernames.  
2. `for user in "${users[@]}"` → Loops through each user.  
3. `id "$user" &>/dev/null` → Checks if the user already exists.  
4. `sudo useradd -m $user` → Creates the user with a home directory.  
5. `echo` → Prints messages about user creation.

**Key Commands:**  
- `useradd`, `id`, `for loop`, `echo`  

**Run:**  
```bash
chmod +x create-users.sh
sudo ./create-users.sh


