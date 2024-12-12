# DOCS
These docs showcase how payment required mail was successfully implemented as a proof of concept. 

## Sieve rules
You need a mail provider that lets you create sieve rules.
+ 1st rule that puts all incoming mail into a subfolder "402", i.e. payment required
![](https://github.com/wrapnuts/402.mail/blob/main/402-sieve-rule.png)
+ 2nd rule that forwards mail received from your specifed **alias** & subject to your inbox
![](https://github.com/wrapnuts/402.mail/blob/main/paid-sieve-rule.png)


```bash

```
