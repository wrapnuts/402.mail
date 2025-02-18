#!/bin/bash
source cashu_venv/bin/activate

for user in "<your.username>"; do

cd /home/$user/.INBOX/_402
ls -Art | tail -n 1 | cat > /home/$user/newmail
cd

value=$(<newmail)

sleep 1
awk '/^cashu/' "/home/$user/.INBOX/_402/$value" > /home/"$user"/cashu.list

while IFS= read -r line; do cashu receive "$line" >> /home/$user/output.txt; done < cashu.list

if [ $? -ne 0 ] || [ ! -f "output.txt" ]; then
  echo "Payment required."
else
# fill in your mail credentials. you need an alias to forward mail to your inbox if it includes cashu
  echo "Success. Paid."
     swaks         --from <402.alias_email@provider.com>         --to <your.email@provider.com>        --server smtp.<your.provider.com>         --port 587         --auth plain         --tls         --auth-user '<your.email@provider.com>'         --auth-password '<your.superstrong.passwd>'         --header 'Subject: Paid | FWD 2 INBOX'         --body 'Success. Paid.' --attach @.INBOX/_402/$value
fi
shred -u cashu.list output.txt newmail


done
