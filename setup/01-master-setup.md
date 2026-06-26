# Jenkins Master Setup (GCP - Ubuntu)


## Step 1: Install Java

```bash
sudo apt update
sudo apt install openjdk-21-jdk -y
```

## Step 2: Install Jenkins

```bash
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install jenkins -y
```

## Step 3: Start Jenkins

```bash
sudo systemctl start jenkins
sudo systemctl enable jenkins
```

## Step 4: Access Jenkins

```
http://<public-ip>:8080
```

## Step 5: Unlock Jenkins

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

---

## 🔐 Step 6: Generate SSH Key (IMPORTANT)

Run on **Master (linex-vm)**:

```bash
ssh-keygen -t rsa -b 4096 -C "jenkins-master"
```

Press ENTER for all prompts.

### Output:

```
~/.ssh/id_rsa        (private key)
~/.ssh/id_rsa.pub    (public key)
```

---

## 🔐 Step 7: View Public Key

```bash
cat ~/.ssh/id_rsa.pub
```

👉 This key will be copied to all agents
