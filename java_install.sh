#!/bin/bash

JDK13_URL='https://download.java.net/java/GA/jdk13.0.2/d4173c853231432d94f001e99d882ca7/8/GPL/openjdk-13.0.2_linux-x64_bin.tar.gz'
curl -s ${JDK13_URL}  --output /opt/openjdk-13.0.2_linux-x64_bin.tar.gz

tar -xf /opt/openjdk-13.0.2_linux-x64_bin.tar.gz -C /opt/

tee /etc/profile.d/jdk13.sh <<EOF
export JAVA_HOME=/opt/jdk-13.0.2
export PATH=\$PATH:\$JAVA_HOME/bin
EOF
