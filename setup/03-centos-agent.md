# CentOS Agent Setup (GCP)


## Step 1: Install Java

```bash
sudo dnf install java-21-openjdk -y
```

---

## 🔐 Step 2: Add SSH Key

```bash
mkdir -p ~/.ssh
nano ~/.ssh/authorized_keys
```

Paste master public key

---

## Step 3: Fix Permissions

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

---

## ⚠️ Step 4: Fix SELinux (CRITICAL for CentOS)

```bash
restorecon -Rv ~/.ssh
```

---

## Step 5: Test SSH

```bash
ssh user@<centos-ip>
```

---

## Step 6: Jenkins Config

* Label: centos
* Remote dir: /home/user
