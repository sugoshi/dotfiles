function prompt() {
	Write-Host -ForegroundColor Green "$env:USERNAME@$env:COMPUTERNAME " `
		-NoNewline
	Write-Host -ForegroundColor Yellow `
		$($(Get-Location).ProviderPath -replace `
			('^' + [regex]::Escape($env:USERPROFILE)), '~')
	return $(if (-not (([Security.Principal.WindowsPrincipal] `
		[Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole( `
			[Security.Principal.WindowsBuiltinRole] "Administrator" `
			))) {
		'$ '
	} else {
		'# '
	})
}
