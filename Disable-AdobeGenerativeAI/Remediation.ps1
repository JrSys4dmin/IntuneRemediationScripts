# Create and set registry key to block Generative AI in adobe products
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bEnableGentech' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
