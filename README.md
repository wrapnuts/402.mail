# 402.mail
Some scripts & other stuff for activating payment required mail. This is a proof of concept. 

## Roadmap
- [x] Run mail client on vps & check incoming mail periodically 
- [x] If new mail includes cashu, forward to inbox
- [ ] If new mail does not include cashu, auto-respond with "payment required!"

## Requirements

**I.** A vps is not strictly required, but simplfies things if you want activate payment required mail forever. **II.** A mail client on your vps. A cashu wallet, like [Nutshell](https://github.com/cashubtc/nutshell?tab=readme-ov-file). **III.** A trustworthy mint that is connected to your cashu wallet. **IV.** A user who is willing to send you mail with a micro-payment attached, i.e. payment required mail. 

1. Install dependencies with apt:

```bash
sudo apt install -y python3-pip pkg-config python3.10-venv python3-qrcode
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

## Install 402.mail

1. Clone repo

```bash
git clone https://github.com/wrapnuts/402.mail.git
```
2. Set permissions

```bash
chmod 700
```

## Test flight
