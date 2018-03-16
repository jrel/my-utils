function OWN-ListGitFolder
{
    Get-ChildItem . |?{$_.Attributes -match'Directory'} |? {Test-Path -Path $( $_.fullname + "/.git")}
}

function OWN-FetchAll
{
	Push-Location
	try{
		OWN-ListGitFolder | ForEach-Object{
			cd $_.fullname; 
			git fetch
		}
	}
	finally{
		Pop-Location
	}
}

function OWN-Get-NoMerged
{
	Push-Location
	try{
		OWN-ListGitFolder | ForEach-Object{
			cd $_.fullname ; 
			if( git branch -r --no-merged origin/master){
				$_.name; 
				git branch -r --no-merged origin/master --no-color
			}
		}
	}
	finally{
		Pop-Location
	}
}
