# DOCS
These docs showcase how payment required mail was successfully implemented as a proof of concept. 

## Sieve rules
You need a mail provider that lets you **create sieve rules**:

**1.** A rule that puts incoming mail into a subfolder "402", i.e. payment required
![](https://github.com/wrapnuts/402.mail/blob/main/docs/402-sieve-rule.png)

**2.** A rule that forwards mail from your specifed **alias** to your inbox
![](https://github.com/wrapnuts/402.mail/blob/main/docs/paid-sieve-rule.png)


## GIF of running payment required mail 
![](https://github.com/wrapnuts/402.mail/blob/main/docs/GIF.402.gif)

### ALL INCOMING MAIL is received in the subFOLDER 402 
\
if a micro-payment is attached, it gets forwarded to the INBOX 
