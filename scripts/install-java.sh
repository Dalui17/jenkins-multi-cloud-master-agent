📁 scripts/install-java-ubuntu.sh
#!/bin/bash
sudo apt update
sudo apt install openjdk-21-jdk -y
java --version


📁 scripts/install-java-centos.sh
#!/bin/bash
sudo dnf install java-21-openjdk -y
java --version


📁 scripts/install-java-amazon.sh
#!/bin/bash
sudo dnf install java-21-amazon-corretto -y
java --version
