# 402.mail
Some scripts & other stuff for activating payment required mail. This is a proof of concept. 

## Roadmap
- [x] Run mutt client on vps & check incoming mail periodically 
- [x] If new mail includes cashu, forward to inbox
- [ ] If new mail does not include cashu, auto-respond with "payment required"
- [ ] Change format of forwarded mail

## Requirements 
The length of each requirement indicates how difficult it is to fulfill. \
\
**I.** The mutt client. \
**II** A cashu wallet, like [Nutshell](https://github.com/cashubtc/nutshell?tab=readme-ov-file). \
**III.** A trustworthy mint that is connected to your cashu wallet. \
**IV.** Someome who is willing to send you mail with a micro-payment attached, i.e. payment required mail. \ 

## Dependencies 
1. Install dependencies with apt:

```bash
sudo apt install mutt swaks python3-pip pkg-config python3-qrcode python3.10-venv -y
```
2. Create venv and upgrade pip:

```bash
python3 -m venv cashu_venv
source cashu_venv/bin/activate
```
```bash
python3 -m pip install --upgrade pip
```
3. Install Nutshell:

```bash
pip install cashu
```
4. Test cashu if it does not work, follow Cashu's [README](https://github.com/cashubtc/nutshell?tab=readme-ov-file)

```bash
cashu info
```
5. Test mutt & use the file in this repo's folder **config4mutt/** to overwrite your config located in **.mutt/muttrc**

```bash
mutt --version
```

## Install 402.mail

1. Clone repo

```bash
git clone https://github.com/wrapnuts/402.mail.git
```
2. Set permissions

```bash
chmod 700 402.sh run.sh mutt.sh
```
3. Working directory

```bash
~$ ls 402.sh cashu_venv  mutt.sh  run.sh
```
4. Create sieve rules for your mail account, according to the [docs.md](https://github.com/wrapnuts/402.mail/tree/main/docs/DOCS.md)

5. Fill in your mail account credentials in **muttrc** & **402.sh** 
   
## Test flight

1. Open a shell & run
```bash
~$ bash run.sh
```
2. Open another shell & run
```bash
~$ bash mutt.sh
```
3. Receive a mail with a cashu string in its body, e.g.
+ header 'Subject: Lets test cashu'
+ body 'This is a test. Will this mail get forwarded to my inbox if I add a micro-payment? cashuBo2F0gaJhaUgAdZ4[...]'
  
4. If both loops run.sh & mutt.sh are running, then the above mail should be forwarded to your inbox by your specified **alias** in the **muttrc**

## GIF of running payment required mail 
![](https://github.com/wrapnuts/402.mail/blob/main/docs/GIF.402.gif)

#### ALL INCOMING MAIL is received in the subfolder 402

#### if a micro-payment is attached, it gets forwarded to the INBOX by the 402.mail.script

## Disclaimer
The author is NOT a cryptographer and this work has not been reviewed. This means that there is very likely a fatal flaw somewhere. 402.mail and Cashu are still experimental and not production-ready.
