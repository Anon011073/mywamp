using System.Diagnostics;

namespace MyESMPControlPanel;

public partial class MainForm : Form
{
    private const string ScriptsPath = @"C:\myesmp\scripts";
    private const string WwwPath = @"C:\myesmp\www";

    public MainForm()
    {
        InitializeComponent();

        // Use a standard system icon so it is visible in the tray
        notifyIcon.Icon = SystemIcons.Application;
    }

    private void ExecuteScript(string scriptName)
    {
        try
        {
            ProcessStartInfo psi = new ProcessStartInfo
            {
                FileName = Path.Combine(ScriptsPath, scriptName),
                WorkingDirectory = ScriptsPath,
                CreateNoWindow = true,
                UseShellExecute = true
            };
            Process.Start(psi);
        }
        catch (Exception ex)
        {
            MessageBox.Show($"Error executing {scriptName}: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }

    private void btnStart_Click(object sender, EventArgs e)
    {
        ExecuteScript("start.bat");
    }

    private void btnStop_Click(object sender, EventArgs e)
    {
        ExecuteScript("stop.bat");
    }

    private void btnRestart_Click(object sender, EventArgs e)
    {
        ExecuteScript("restart.bat");
    }

    private void btnLocalhost_Click(object sender, EventArgs e)
    {
        try
        {
            Process.Start(new ProcessStartInfo("http://localhost") { UseShellExecute = true });
        }
        catch (Exception ex)
        {
            MessageBox.Show($"Error opening localhost: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }

    private void btnPMA_Click(object sender, EventArgs e)
    {
        try
        {
            Process.Start(new ProcessStartInfo("http://localhost/phpmyadmin") { UseShellExecute = true });
        }
        catch (Exception ex)
        {
            MessageBox.Show($"Error opening phpMyAdmin: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }

    private void btnWWW_Click(object sender, EventArgs e)
    {
        try
        {
            if (Directory.Exists(WwwPath))
            {
                Process.Start("explorer.exe", WwwPath);
            }
            else
            {
                MessageBox.Show($"WWW folder not found at {WwwPath}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        catch (Exception ex)
        {
            MessageBox.Show($"Error opening WWW folder: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }

    private void btnShell_Click(object sender, EventArgs e)
    {
        ExecuteScript("shell.bat");
    }

    private void statusTimer_Tick(object sender, EventArgs e)
    {
        UpdateStatus();
    }

    private void UpdateStatus()
    {
        bool isApacheRunning = IsProcessRunning("httpd");
        bool isMysqlRunning = IsProcessRunning("mysqld");

        if (isApacheRunning && isMysqlRunning)
        {
            lblStatus.Text = "RUNNING";
            lblStatus.ForeColor = Color.Green;
            notifyIcon.Text = "MyESMP - Services Running";
        }
        else if (!isApacheRunning && !isMysqlRunning)
        {
            lblStatus.Text = "STOPPED";
            lblStatus.ForeColor = Color.Red;
            notifyIcon.Text = "MyESMP - Services Stopped";
        }
        else
        {
            string partial = isApacheRunning ? "Apache" : "MySQL";
            lblStatus.Text = $"PARTIAL ({partial})";
            lblStatus.ForeColor = Color.Orange;
            notifyIcon.Text = $"MyESMP - Only {partial} Running";
        }
    }

    private bool IsProcessRunning(string processName)
    {
        return Process.GetProcessesByName(processName).Length > 0;
    }

    private void MainForm_Resize(object sender, EventArgs e)
    {
        if (WindowState == FormWindowState.Minimized)
        {
            this.Hide();
            notifyIcon.Visible = true;
        }
    }

    private void notifyIcon_DoubleClick(object sender, EventArgs e)
    {
        this.Show();
        this.WindowState = FormWindowState.Normal;
    }

    private void trayExit_Click(object sender, EventArgs e)
    {
        Application.Exit();
    }
}