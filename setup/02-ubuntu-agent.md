# Ubuntu Agent Setup (GCP)

## Step 1: Install Java

```bash
sudo apt update
sudo apt install openjdk-21-jdk -y
```

---

## 🔐 Step 2: Add SSH Key from Master

On **Ubuntu Agent VM**:

```bash
mkdir -p ~/.ssh
nano ~/.ssh/authorized_keys
```

👉 Paste the **public key** from master

---

## Step 3: Fix Permissions

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

---

## Step 4: Test SSH from Master

```bash
ssh user@<ubuntu-agent-ip>
```

✔ Should connect without a password

---

## Step 5: Jenkins Configuration

* Label: linux
* Remote dir: /home/user
* Launch via SSH
