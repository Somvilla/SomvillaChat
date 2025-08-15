Write-Output "$WINDOWN_PFX"
Move-Item -Path $WINDOWS_PFX -Destination SomvillaChat.pem
certutil -decode SomvillaChat.pem SomvillaChat.pfx

flutter pub run msix:create -c SomvillaChat.pfx -p $WINDOWS_PFX_PASS --sign-msix true --install-certificate false
