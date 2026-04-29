Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$scriptsPath = "C:\myesmp\scripts"
$wwwPath = "C:\myesmp\www"

$form = New-Object Windows.Forms.Form
$form.Text = "MyESMP Control Panel"
$form.Size = New-Object Drawing.Size(300, 300)
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedSingle"
$form.MaximizeBox = $false

# GroupBox Server Control
$grpServer = New-Object Windows.Forms.GroupBox
$grpServer.Text = "Server Control"
$grpServer.Location = New-Object Drawing.Point(12, 12)
$grpServer.Size = New-Object Drawing.Size(260, 100)
$form.Controls.Add($grpServer)

# Status Label
$lblStatusLabel = New-Object Windows.Forms.Label
$lblStatusLabel.Text = "Status:"
$lblStatusLabel.Location = New-Object Drawing.Point(15, 30)
$lblStatusLabel.AutoSize = $true
$grpServer.Controls.Add($lblStatusLabel)

$lblStatus = New-Object Windows.Forms.Label
$lblStatus.Text = "CHECKING"
$lblStatus.Font = New-Object Drawing.Font("Segoe UI", 9, [Drawing.FontStyle]::Bold)
$lblStatus.Location = New-Object Drawing.Point(60, 30)
$lblStatus.AutoSize = $true
$grpServer.Controls.Add($lblStatus)

# Control Buttons
$btnStart = New-Object Windows.Forms.Button
$btnStart.Text = "Start"
$btnStart.Location = New-Object Drawing.Point(15, 60)
$btnStart.Size = New-Object Drawing.Size(70, 25)
$btnStart.Add_Click({
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "cmd.exe"
    $psi.Arguments = "/c start.bat"
    $psi.WorkingDirectory = $scriptsPath
    $psi.WindowStyle = "Hidden"
    $psi.CreateNoWindow = $true
    [System.Diagnostics.Process]::Start($psi)
})
$grpServer.Controls.Add($btnStart)

$btnStop = New-Object Windows.Forms.Button
$btnStop.Text = "Stop"
$btnStop.Location = New-Object Drawing.Point(90, 60)
$btnStop.Size = New-Object Drawing.Size(70, 25)
$btnStop.Add_Click({
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "cmd.exe"
    $psi.Arguments = "/c stop.bat"
    $psi.WorkingDirectory = $scriptsPath
    $psi.WindowStyle = "Hidden"
    $psi.CreateNoWindow = $true
    [System.Diagnostics.Process]::Start($psi)
})
$grpServer.Controls.Add($btnStop)

$btnRestart = New-Object Windows.Forms.Button
$btnRestart.Text = "Restart"
$btnRestart.Location = New-Object Drawing.Point(165, 60)
$btnRestart.Size = New-Object Drawing.Size(80, 25)
$btnRestart.Add_Click({
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "cmd.exe"
    $psi.Arguments = "/c restart.bat"
    $psi.WorkingDirectory = $scriptsPath
    $psi.WindowStyle = "Hidden"
    $psi.CreateNoWindow = $true
    [System.Diagnostics.Process]::Start($psi)
})
$grpServer.Controls.Add($btnRestart)

# GroupBox Quick Access
$grpQuick = New-Object Windows.Forms.GroupBox
$grpQuick.Text = "Quick Access"
$grpQuick.Location = New-Object Drawing.Point(12, 120)
$grpQuick.Size = New-Object Drawing.Size(260, 120)
$form.Controls.Add($grpQuick)

$btnLocalhost = New-Object Windows.Forms.Button
$btnLocalhost.Text = "Open Localhost"
$btnLocalhost.Location = New-Object Drawing.Point(15, 25)
$btnLocalhost.Size = New-Object Drawing.Size(230, 25)
$btnLocalhost.Add_Click({ Start-Process "http://localhost" })
$grpQuick.Controls.Add($btnLocalhost)

$btnPMA = New-Object Windows.Forms.Button
$btnPMA.Text = "phpMyAdmin"
$btnPMA.Location = New-Object Drawing.Point(15, 55)
$btnPMA.Size = New-Object Drawing.Size(230, 25)
$btnPMA.Add_Click({ Start-Process "http://localhost/phpmyadmin" })
$grpQuick.Controls.Add($btnPMA)

$btnWWW = New-Object Windows.Forms.Button
$btnWWW.Text = "WWW Folder"
$btnWWW.Location = New-Object Drawing.Point(15, 85)
$btnWWW.Size = New-Object Drawing.Size(110, 25)
$btnWWW.Add_Click({ if (Test-Path $wwwPath) { Start-Process "explorer.exe" $wwwPath } })
$grpQuick.Controls.Add($btnWWW)

$btnShell = New-Object Windows.Forms.Button
$btnShell.Text = "Terminal (Shell)"
$btnShell.Location = New-Object Drawing.Point(135, 85)
$btnShell.Size = New-Object Drawing.Size(110, 25)
$btnShell.Add_Click({ Start-Process "cmd.exe" -ArgumentList "/c shell.bat" -WorkingDirectory $scriptsPath })
$grpQuick.Controls.Add($btnShell)

# Status Monitoring Timer
$timer = New-Object Windows.Forms.Timer
$timer.Interval = 2000
$timer.Add_Tick({
    $apache = Get-Process "httpd" -ErrorAction SilentlyContinue
    $mysql = Get-Process "mysqld" -ErrorAction SilentlyContinue

    if ($apache -and $mysql) {
        $lblStatus.Text = "RUNNING"
        $lblStatus.ForeColor = [Drawing.Color]::Green
    } elseif (-not $apache -and -not $mysql) {
        $lblStatus.Text = "STOPPED"
        $lblStatus.ForeColor = [Drawing.Color]::Red
    } else {
        $partial = if ($apache) { "Apache" } else { "MySQL" }
        $lblStatus.Text = "PARTIAL ($partial)"
        $lblStatus.ForeColor = [Drawing.Color]::Orange
    }
})
$timer.Start()

$form.Add_FormClosing({ $timer.Stop() })
$form.ShowDialog()
