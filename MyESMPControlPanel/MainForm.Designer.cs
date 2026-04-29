namespace MyESMPControlPanel;

partial class MainForm
{
    private System.ComponentModel.IContainer components = null;

    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }
        base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    private void InitializeComponent()
    {
        this.components = new System.ComponentModel.Container();
        this.btnStart = new System.Windows.Forms.Button();
        this.btnStop = new System.Windows.Forms.Button();
        this.btnRestart = new System.Windows.Forms.Button();
        this.lblStatusLabel = new System.Windows.Forms.Label();
        this.lblStatus = new System.Windows.Forms.Label();
        this.btnLocalhost = new System.Windows.Forms.Button();
        this.btnPMA = new System.Windows.Forms.Button();
        this.btnWWW = new System.Windows.Forms.Button();
        this.btnShell = new System.Windows.Forms.Button();
        this.statusTimer = new System.Windows.Forms.Timer(this.components);
        this.notifyIcon = new System.Windows.Forms.NotifyIcon(this.components);
        this.trayMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
        this.trayStart = new System.Windows.Forms.ToolStripMenuItem();
        this.trayStop = new System.Windows.Forms.ToolStripMenuItem();
        this.trayRestart = new System.Windows.Forms.ToolStripMenuItem();
        this.trayExit = new System.Windows.Forms.ToolStripMenuItem();
        this.grpServer = new System.Windows.Forms.GroupBox();
        this.grpQuickAccess = new System.Windows.Forms.GroupBox();

        this.trayMenu.SuspendLayout();
        this.grpServer.SuspendLayout();
        this.grpQuickAccess.SuspendLayout();
        this.SuspendLayout();

        //
        // btnStart
        //
        this.btnStart.Location = new System.Drawing.Point(15, 60);
        this.btnStart.Name = "btnStart";
        this.btnStart.Size = new System.Drawing.Size(75, 23);
        this.btnStart.TabIndex = 0;
        this.btnStart.Text = "Start";
        this.btnStart.UseVisualStyleBackColor = true;
        this.btnStart.Click += new System.EventHandler(this.btnStart_Click);

        //
        // btnStop
        //
        this.btnStop.Location = new System.Drawing.Point(96, 60);
        this.btnStop.Name = "btnStop";
        this.btnStop.Size = new System.Drawing.Size(75, 23);
        this.btnStop.TabIndex = 1;
        this.btnStop.Text = "Stop";
        this.btnStop.UseVisualStyleBackColor = true;
        this.btnStop.Click += new System.EventHandler(this.btnStop_Click);

        //
        // btnRestart
        //
        this.btnRestart.Location = new System.Drawing.Point(177, 60);
        this.btnRestart.Name = "btnRestart";
        this.btnRestart.Size = new System.Drawing.Size(75, 23);
        this.btnRestart.TabIndex = 2;
        this.btnRestart.Text = "Restart";
        this.btnRestart.UseVisualStyleBackColor = true;
        this.btnRestart.Click += new System.EventHandler(this.btnRestart_Click);

        //
        // lblStatusLabel
        //
        this.lblStatusLabel.AutoSize = true;
        this.lblStatusLabel.Location = new System.Drawing.Point(15, 30);
        this.lblStatusLabel.Name = "lblStatusLabel";
        this.lblStatusLabel.Size = new System.Drawing.Size(42, 15);
        this.lblStatusLabel.TabIndex = 3;
        this.lblStatusLabel.Text = "Status:";

        //
        // lblStatus
        //
        this.lblStatus.AutoSize = true;
        this.lblStatus.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
        this.lblStatus.Location = new System.Drawing.Point(63, 30);
        this.lblStatus.Name = "lblStatus";
        this.lblStatus.Size = new System.Drawing.Size(59, 15);
        this.lblStatus.TabIndex = 4;
        this.lblStatus.Text = "CHECKING";

        //
        // grpServer
        //
        this.grpServer.Controls.Add(this.lblStatusLabel);
        this.grpServer.Controls.Add(this.lblStatus);
        this.grpServer.Controls.Add(this.btnStart);
        this.grpServer.Controls.Add(this.btnStop);
        this.grpServer.Controls.Add(this.btnRestart);
        this.grpServer.Location = new System.Drawing.Point(12, 12);
        this.grpServer.Name = "grpServer";
        this.grpServer.Size = new System.Drawing.Size(268, 100);
        this.grpServer.TabIndex = 5;
        this.grpServer.TabStop = false;
        this.grpServer.Text = "Server Control";

        //
        // btnLocalhost
        //
        this.btnLocalhost.Location = new System.Drawing.Point(15, 25);
        this.btnLocalhost.Name = "btnLocalhost";
        this.btnLocalhost.Size = new System.Drawing.Size(237, 23);
        this.btnLocalhost.TabIndex = 6;
        this.btnLocalhost.Text = "Open Localhost (http://localhost)";
        this.btnLocalhost.UseVisualStyleBackColor = true;
        this.btnLocalhost.Click += new System.EventHandler(this.btnLocalhost_Click);

        //
        // btnPMA
        //
        this.btnPMA.Location = new System.Drawing.Point(15, 54);
        this.btnPMA.Name = "btnPMA";
        this.btnPMA.Size = new System.Drawing.Size(237, 23);
        this.btnPMA.TabIndex = 7;
        this.btnPMA.Text = "phpMyAdmin";
        this.btnPMA.UseVisualStyleBackColor = true;
        this.btnPMA.Click += new System.EventHandler(this.btnPMA_Click);

        //
        // btnWWW
        //
        this.btnWWW.Location = new System.Drawing.Point(15, 83);
        this.btnWWW.Name = "btnWWW";
        this.btnWWW.Size = new System.Drawing.Size(115, 23);
        this.btnWWW.TabIndex = 8;
        this.btnWWW.Text = "WWW Folder";
        this.btnWWW.UseVisualStyleBackColor = true;
        this.btnWWW.Click += new System.EventHandler(this.btnWWW_Click);

        //
        // btnShell
        //
        this.btnShell.Location = new System.Drawing.Point(137, 83);
        this.btnShell.Name = "btnShell";
        this.btnShell.Size = new System.Drawing.Size(115, 23);
        this.btnShell.TabIndex = 10;
        this.btnShell.Text = "Terminal (Shell)";
        this.btnShell.UseVisualStyleBackColor = true;
        this.btnShell.Click += new System.EventHandler(this.btnShell_Click);

        //
        // grpQuickAccess
        //
        this.grpQuickAccess.Controls.Add(this.btnLocalhost);
        this.grpQuickAccess.Controls.Add(this.btnPMA);
        this.grpQuickAccess.Controls.Add(this.btnWWW);
        this.grpQuickAccess.Controls.Add(this.btnShell);
        this.grpQuickAccess.Location = new System.Drawing.Point(12, 118);
        this.grpQuickAccess.Name = "grpQuickAccess";
        this.grpQuickAccess.Size = new System.Drawing.Size(268, 120);
        this.grpQuickAccess.TabIndex = 9;
        this.grpQuickAccess.TabStop = false;
        this.grpQuickAccess.Text = "Quick Access";

        //
        // statusTimer
        //
        this.statusTimer.Enabled = true;
        this.statusTimer.Interval = 2000;
        this.statusTimer.Tick += new System.EventHandler(this.statusTimer_Tick);

        //
        // notifyIcon
        //
        this.notifyIcon.ContextMenuStrip = this.trayMenu;
        this.notifyIcon.Text = "MyESMP Control Panel";
        this.notifyIcon.Visible = true;
        this.notifyIcon.DoubleClick += new System.EventHandler(this.notifyIcon_DoubleClick);

        //
        // trayMenu
        //
        this.trayMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.trayStart,
            this.trayStop,
            this.trayRestart,
            new System.Windows.Forms.ToolStripSeparator(),
            this.trayExit});
        this.trayMenu.Name = "trayMenu";
        this.trayMenu.Size = new System.Drawing.Size(111, 98);

        //
        // trayStart
        //
        this.trayStart.Name = "trayStart";
        this.trayStart.Size = new System.Drawing.Size(110, 22);
        this.trayStart.Text = "Start";
        this.trayStart.Click += new System.EventHandler(this.btnStart_Click);

        //
        // trayStop
        //
        this.trayStop.Name = "trayStop";
        this.trayStop.Size = new System.Drawing.Size(110, 22);
        this.trayStop.Text = "Stop";
        this.trayStop.Click += new System.EventHandler(this.btnStop_Click);

        //
        // trayRestart
        //
        this.trayRestart.Name = "trayRestart";
        this.trayRestart.Size = new System.Drawing.Size(110, 22);
        this.trayRestart.Text = "Restart";
        this.trayRestart.Click += new System.EventHandler(this.btnRestart_Click);

        //
        // trayExit
        //
        this.trayExit.Name = "trayExit";
        this.trayExit.Size = new System.Drawing.Size(110, 22);
        this.trayExit.Text = "Exit";
        this.trayExit.Click += new System.EventHandler(this.trayExit_Click);

        //
        // MainForm
        //
        this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
        this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
        this.ClientSize = new System.Drawing.Size(292, 250);
        this.Controls.Add(this.grpServer);
        this.Controls.Add(this.grpQuickAccess);
        this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
        this.MaximizeBox = false;
        this.Name = "MainForm";
        this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
        this.Text = "MyESMP Control Panel";
        this.Resize += new System.EventHandler(this.MainForm_Resize);
        this.trayMenu.ResumeLayout(false);
        this.grpServer.ResumeLayout(false);
        this.grpServer.PerformLayout();
        this.grpQuickAccess.ResumeLayout(false);
        this.ResumeLayout(false);
    }

    #endregion

    private System.Windows.Forms.Button btnStart;
    private System.Windows.Forms.Button btnStop;
    private System.Windows.Forms.Button btnRestart;
    private System.Windows.Forms.Label lblStatusLabel;
    private System.Windows.Forms.Label lblStatus;
    private System.Windows.Forms.Button btnLocalhost;
    private System.Windows.Forms.Button btnPMA;
    private System.Windows.Forms.Button btnWWW;
    private System.Windows.Forms.Button btnShell;
    private System.Windows.Forms.Timer statusTimer;
    private System.Windows.Forms.NotifyIcon notifyIcon;
    private System.Windows.Forms.ContextMenuStrip trayMenu;
    private System.Windows.Forms.ToolStripMenuItem trayStart;
    private System.Windows.Forms.ToolStripMenuItem trayStop;
    private System.Windows.Forms.ToolStripMenuItem trayRestart;
    private System.Windows.Forms.ToolStripMenuItem trayExit;
    private System.Windows.Forms.GroupBox grpServer;
    private System.Windows.Forms.GroupBox grpQuickAccess;
}