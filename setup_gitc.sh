#!/bin/bash

mkdir ~/scripts

touch ~/scripts/gitc.sh

echo "#!/bin/bash" >> ~/scripts/gitc.sh

echo "" >> ~/scripts/gitc.sh

echo "git add ." >> ~/scripts/gitc.sh

echo "" >> ~/scripts/gitc.sh

echo "read -p 'Add commit message:' commit_message" >> ~/scripts/gitc.sh

echo "" >> ~/scripts/gitc.sh

echo 'git commit -m "$commit_message"' >> ~/scripts/gitc.sh

echo "" >> ~/scripts/gitc.sh

echo 'git push' >> ~/scripts/gitc.sh

echo "" >> ~/.bashrc

echo 'alias gitc="sh ~/scripts/gitc.sh"' >> ~/.bashrc

echo "Restart terminal or source ~/.bashrc"