$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
$feature = "support\User Packages"

# Sourcing is not working from within vscode. Works if we open file in ISE and execute :/
. "$here\..\$feature\$sut"

Describe -tag "Support,UserPackages" -name 'build_install_entries' {
    Context "Testing GetIndexName(str)" {
        It "Test if GetIndexName return 0-9" {
            GetIndexName -name 1stDivisionManager_v1.0_1800.lha | Should -Be "0-9"
        }
        It "Test if GetIndexName return A" {
            GetIndexName -name A10TankKiller_v2.0_3Disk.lha | Should -Be "A"
        }
        It "Test if GetIndexName -name $null return _" {
            GetIndexName -name $null | Should -Be "_"
        }
        It "Test if GetIndexName -name /s/s/s return _" {
            GetIndexName -name "   " | Should -Be "_"
        }
    }

    Context "Testing WriteTextLinesForAmiga(path, lines)" {
        It "WIP - Fix Write file" {
            "Rework: WriteTextLinesForAmiga" | Should -Be $false
        }
    }

    Context "Testing ParseEntryentryName)" {
        It "WIP - Fix Me" {
            "Rework: ParseEntry" | Should -Be $false
        }
    }

    Context "Testing CalculateBestVersionRank)" {
        It "WIP - Fix Me" {
            "Rework: entry" | Should -Be $false
        }
    }

    Context "Testing FindEntries(userPackageDir)" {
        It "WIP - Fix Me" {
            "Rework: FindEntries" | Should -Be $false
        }
    }

    Context "Testing BuildEntriesBestVersion(entries,lowMem)" {
        It "WIP - Fix Me" {
            "Rework: BuildEntriesBestVersion" | Should -Be $false
        }
    }
    Context "Testing (entriesSets,userPackageName,entriesDir)" {
        It "WIP - Fix Me" {
            "Rework: BuildUserPackageInstall" | Should -Be $false
        }
    }
    Context "Testing BuildInstallEntries(userPackageName,entries,userPackagePath,installEntriesDir)" {
        It "WIP - Fix Me" {
            "Rework: BuildInstallEntries" | Should -Be $false
        }
    }
    Context "Testing WriteEntriesList(entriesFile,entries)" {
        It "WIP - Fix Me" {
            "Rework: WriteEntriesList" | Should -Be $false
        }
    }
}