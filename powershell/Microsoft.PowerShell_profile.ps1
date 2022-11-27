
# Get posh-theme by it's name and create path to it.
# can be then 
function PoshGetTheme($theme_name)
{
    # Make sure the selected theme exists.
    $theme_folder = $env:POSH_THEMES_PATH
    
    $out = Get-ChildItem -Path $theme_folder `
        | %{$_.FullName} | Select-String $theme_name

    return $out
}

# Initialize oh-my-posh.
$posh_theme = PoshGetTheme("huvix")
oh-my-posh init pwsh --config $posh_theme | Invoke-Expression


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-Module git-aliases -DisableNameChecking

# Add alias for ll, usually goes as long-list (ls -l)
# But everything in pwsh is long list,

# Recursive list with depth=1.
function ll {
	Get-ChildItem -Recurse -Depth 1 $args
}

# Print out files.
function la {
	Get-ChildItem -File $args
}

# Print out path.
function pyv {
    echo "$args;$env:path"
}

# Append to $args to path.
function add-path {
    $env:path += ":$args"
}


