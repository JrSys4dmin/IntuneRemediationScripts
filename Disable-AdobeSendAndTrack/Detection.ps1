# Check for disable adobe send and track registry key
try {
	if(-NOT (Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud")){ return $false };
	if((Get-ItemPropertyValue -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud' -Name 'bAdobeSendPluginToggle' -ea SilentlyContinue) -eq 1) {  } else { return $false };
}
catch { return $false }
return $true
