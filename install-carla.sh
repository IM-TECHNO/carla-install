echo "Installing Carla Simulator"
echo ""
if ping -q -c 1 -W 1 keyserver.ubuntu.com >/dev/null; then
  echo "Connection successful"
  echo ""
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1AF1527DE64CB8D9
  sudo add-apt-repository "deb [arch=amd64] http://dist.carla.org/carla $(lsb_release -sc) main"
  sudo apt-get update 
  sudo apt-get install carla-simulator
  cd /opt/carla-simulator

else
  echo "Connection unsuccessful"
  echo ""
  echo "Firewall detected!!! Use your OWN hotspot"
  exit 0
fi
