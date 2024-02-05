#!/usr/bin/expect

# Run the CyberPanel installation script using curl or wget
sudo spawn sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh)

# Expect the script to ask for confirmation
expect "Install CyberPanel."
send "1\n"

# Expect the script to ask for installation type
expect "Install CyberPanel with OpenLiteSpeed."
send "1\n"

# Expect the script to ask for installation type
expect "Install CyberPanel with OpenLiteSpeed."
send "1\n"

# Expect the script to ask for installation type
expect "Full installation [Y/n]"
send "y\n"

# Expect the script to ask for installation type
expect "Remote MySQL [y/N]"
send "n\n"

# Expect the script to ask for installation type
expect "Press Enter key to continue with latest version or Enter specific version such as: 1.9.4 , 2.0.1 , 2.0.2 ...etc"
send "2.3.5\n"

# Expect the script to ask for installation type
expect "Please select [Y/n]:"
send "y\n"

# Expect the script to ask for installation type
expect "Please select [Y/n]:"
send "y\n"

# Expect the script to ask for installation type
expect "Please type Yes or no (with capital Y, default Yes): "
send "y\n"

# Add more 'expect' and 'send' pairs if needed for additional prompts

# Wait for the installation to complete
expect eof
