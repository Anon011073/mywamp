# MyESMP (Minimal WAMP Stack)

A lightweight, portable WAMP-style development environment for Windows.
No installer, no registry changes — just extract to `C:\myesmp` and run.

---

## ⚡ Overview

MyESMP includes:

* Apache
* PHP
* MySQL
* phpMyAdmin
* Node.js
* Composer

Minimal by design:

* Fixed path (`C:\myesmp`)
* No config UI
* No version switching
* No unnecessary features

---

## 📁 Folder Structure

```
C:\myesmp\
├── apache\
├── php\
├── mysql\
├── node\
├── composer\
├── phpmyadmin\
├── www\
├── scripts\
│   ├── start.bat
│   ├── stop.bat
│   ├── restart.bat
│   └── status.bat
└── control-panel.exe
```

---

## 🚀 Getting Started

1. Extract to:

   ```
   C:\myesmp
   ```

2. Run:

   ```
   control-panel.exe
   ```

3. Click **Start Server**

4. Open:

   * http://localhost
   * http://localhost/phpmyadmin

---

## 🎛 Control Panel

Features:

* Start / Stop / Restart server
* Status indicator (Running / Stopped)
* Open localhost
* Open phpMyAdmin
* Open `www` folder
* Optional system tray support

---

## 🧩 Scripts

Located in:

```
C:\myesmp\scripts\
```

### start.bat

Starts Apache and MySQL

### stop.bat

Stops Apache and MySQL

> ⚠️ Use proper shutdown for MySQL to avoid corruption

### restart.bat

Restarts services

### status.bat

Checks if services are running

---

## 🌐 Web Root

```
C:\myesmp\www\
```

Access via:

```
http://localhost/
```

---

## 🛠 Requirements

* Windows 10/11
* Ports 80 and 3306 must be free

---

## ⚠️ Limitations

* No SSL (by default)
* No virtual host manager
* No multi-version support
* No auto updates
* Not for production use

---

## 🔧 Customization

Edit configs:

* `apache\conf\httpd.conf`
* `php\php.ini`
* MySQL config files

Modify scripts:

```
scripts\
```

---

## 📌 Future Ideas

* Log viewer
* Config shortcuts
* Auto-start server
* Multi-PHP support

---

## ⚠️ Disclaimer

Personal-use project.
Use at your own risk.

---

## 📄 License

MIT
