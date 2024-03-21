# Test if Registry key exists to block Generative AI for Adobe Products
try {
	if(-NOT (Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown")){ return $false };
	if((Get-ItemPropertyValue -LiteralPath 'HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bEnableGentech' -ea SilentlyContinue) -eq 0) {  } else { return $false };
}
catch { return $false }
return $true
