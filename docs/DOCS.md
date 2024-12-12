# DOCS
These docs showcase how payment required mail was successfully implemented as a proof of concept. 

## Sieve rules
You need a mail provider that lets you create sieve rules:

**1.** a rule that puts incoming mail into a subfolder "402", i.e. payment required
![](https://github.com/wrapnuts/402.mail/blob/main/docs/402-sieve-rule.png)

**2.** a rule that forwards mail from your specifed **alias** to your inbox
![](https://github.com/wrapnuts/402.mail/blob/main/docs/paid-sieve-rule.png)


```bash

```
