Confirm the following are included in your repo, checking each box:

 - [x] completed README.md file with the necessary information
 - [x] shim_x86.efi to be signed
 - [x] shim_x64.efi to be signed
 - [x] public portion of your certificate(s) embedded in shim (the file passed to VENDOR_CERT_FILE)
 - [x] binaries, for which hashes are added to vendor_db ( if you use vendor_db and have hashes allow-listed )
 - [x] any extra patches to shim via your own git tree or as files
 - [ ] any extra patches to grub via your own git tree or as files
 - [ ] build logs
 - [x] a Dockerfile to reproduce the build of the provided shim EFI binaries

*******************************************************************************
### What is the link to your tag in a repo cloned from rhboot/shim-review?
*******************************************************************************
https://github.com/baramundisoftware/shim-review-2026/tree/main

*******************************************************************************
### What is the SHA256 hash of your final SHIM binary?
*******************************************************************************
shim_x86: 4F3A19CDCC78C36A0AA1C20CD74C5683C0611BF8A0A8C30D0F1397AE07DCE392
shim_x64: ACB3F883C274D96D3950F236AFC8B93C94FC24FFEB93E6B598C31EDC4F78EA7B

*******************************************************************************
### What is the link to your previous shim review request (if any, otherwise N/A)?
*******************************************************************************
https://github.com/rhboot/shim-review/issues/422

*******************************************************************************
### If no security contacts have changed since verification, what is the link to your request, where they've been verified (if any, otherwise N/A)?
*******************************************************************************
https://github.com/rhboot/shim-review/issues/422#issuecomment-2158595751
https://github.com/rhboot/shim-review/issues/422#issuecomment-2157519024
https://github.com/rhboot/shim-review/issues/422#issuecomment-2134390041