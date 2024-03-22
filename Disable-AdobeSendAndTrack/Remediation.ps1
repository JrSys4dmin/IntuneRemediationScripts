# Create and/or update registry key to disable Adobe send and track in outlook
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud' -Name 'bAdobeSendPluginToggle' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
