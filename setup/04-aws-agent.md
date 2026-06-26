# AWS Agent Setup (Amazon Linux)


## Step 1: Launch EC2

* OS: Amazon Linux
* Create Key Pair (download .pem file)

---

## 🔐 Step 2: Copy Master Public Key to AWS

SSH into AWS:

```bash
ssh -i your-key.pem ec2-user@<aws-ip>
```

Then:

```bash
mkdir -p ~/.ssh
nano ~/.ssh/authorized_keys
```

👉 Paste BOTH:

1. Existing AWS key (already present)
2. Master public key

---

## Step 3: Fix Permissions

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

---

## Step 4: Install Java

```bash
sudo dnf install java-17-amazon-corretto -y
```

---

## Step 5: Security Group

Allow:

* Port 22 (SSH)

---

## Step 6: Test SSH from Master

```bash
ssh ec2-user@<aws-ip>
```

✔ Should connect without password

---

## Step 7: Jenkins Config

* Host: <aws-ip>
* User: ec2-user
* Label: aws
* Remote dir: /home/ec2-user
