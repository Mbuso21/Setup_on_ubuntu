
# This whole setup was taken from https://linuxize.com/post/how-to-install-wildfly-on-ubuntu-18-04/

cd

# Step 1: Install Java OpenJDK - Please install Java if you haven't

# ------------------------------------------------------------------------------------

# Step 2: Create a User

# We will create a new system user and group named wildfly with 
# home directory /opt/wildfly that will run the WildFly service:

sudo groupadd -r wildfly
sudo useradd -r -g wildfly -d /opt/wildfly -s /sbin/nologin wildfly

# ------------------------------------------------------------------------------------

# Step 3: Install WildFly

# Download the WildFly archive in the /tmp directory using the following wget command:

WILDFLY_VERSION=16.0.0.Final

wget https://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz -P /tmp

# Once the download is completed, extract the tar.gz file and move it to the /opt directory:

sudo tar xf /tmp/wildfly-$WILDFLY_VERSION.tar.gz -C /opt/

# Create a symbolic link wildfly which will point to the WildFly installation directory:

sudo ln -s /opt/wildfly-$WILDFLY_VERSION /opt/wildfly

# WildFly will run under the wildfly user which needs to have access to the 
# WildFly installation directory.

# The following command will change the directory ownership to user and group wildfly:

sudo chown -RH wildfly: /opt/wildfly

# ------------------------------------------------------------------------------------

# Step 4: Configure Systemd

# The WildFly package includes files necessary to run WildFly as a service.

# Start by creating a directory which will hold the WildFly configuration file:

sudo mkdir -p /etc/wildfly

# Copy the configuration file to the /etc/wildfly directory:

sudo cp /opt/wildfly/docs/contrib/scripts/systemd/wildfly.conf /etc/wildfly/

# Next copy the WildFly launch.sh script to the /opt/wildfly/bin/ directory:

sudo cp /opt/wildfly/docs/contrib/scripts/systemd/launch.sh /opt/wildfly/bin/

# The scripts inside bin directory must have executable flag :

sudo sh -c 'chmod +x /opt/wildfly/bin/*.sh'

# The last step is to copy the systemd unit file named to the /etc/systemd/system/ directory:
# -
sudo cp /opt/wildfly/docs/contrib/scripts/systemd/wildfly.service /etc/systemd/system/

# Notify systemd that we created a new unit file:

sudo systemctl daemon-reload

# Start the WildFly service by executing:

sudo systemctl start wildfly

# Check the service status with the following command:

sudo systemctl status wildfly

# Enable the service to be automatically started at boot time:

sudo systemctl enable wildfly

# - ended here

# ------------------------------------------------------------------------------------

# Step 5: Adjust the Firewall

# If your server is protected by a firewall and you want to access WildFly interface from the outside of your local network you need to open port 8080.

# To allow traffic on port 8080 type the following command:

sudo ufw allow 8080/tcp

# ------------------------------------------------------------------------------------

# Step 6: Configure WildFly Authentication

# Now that WildFly is installed and running the next step is to create a user who will be able to connect using the administration console or remotely using the CLI.

# To add a new user use the add-user.sh script that is located the WildFly’s bin directory:

sudo /opt/wildfly/bin/add-user.sh

# ------------------------------------------------------------------------------------

# Step 7: Access WildFly Administration Console 

