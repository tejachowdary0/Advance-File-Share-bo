if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hero890/Advance-File-Share-bo /Advance-File-Share-bo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-File-Share-bo
fi
cd /Advance-File-Share-bo
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
