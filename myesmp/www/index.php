<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyESMP Stack - Home</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; color: #333; margin: 0; padding: 20px; }
        .container { max-width: 900px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        header { border-bottom: 2px solid #007bff; margin-bottom: 20px; padding-bottom: 10px; display: flex; justify-content: space-between; align-items: center; }
        h1 { margin: 0; color: #007bff; font-size: 24px; }
        .status-badge { padding: 5px 10px; border-radius: 4px; font-weight: bold; font-size: 14px; }
        .status-online { background-color: #d4edda; color: #155724; }

        .section { margin-bottom: 30px; }
        h2 { border-bottom: 1px solid #ddd; padding-bottom: 5px; font-size: 18px; color: #555; }

        .grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); gap: 15px; }
        .card { background: #fff; border: 1px solid #ddd; padding: 15px; border-radius: 6px; text-decoration: none; color: #333; transition: transform 0.2s, box-shadow 0.2s; display: flex; flex-direction: column; align-items: center; text-align: center; }
        .card:hover { transform: translateY(-3px); box-shadow: 0 4px 8px rgba(0,0,0,0.1); border-color: #007bff; }
        .card i { font-size: 24px; margin-bottom: 10px; }
        .card-title { font-weight: bold; margin-bottom: 5px; }
        .card-meta { font-size: 12px; color: #888; }

        .links { display: flex; gap: 15px; margin-top: 20px; }
        .btn { padding: 10px 20px; border-radius: 4px; text-decoration: none; font-weight: bold; color: white; background-color: #007bff; }
        .btn-secondary { background-color: #6c757d; }
        .btn:hover { opacity: 0.9; }

        .footer { margin-top: 40px; text-align: center; font-size: 12px; color: #aaa; border-top: 1px solid #eee; padding-top: 20px; }
    </style>
</head>
<body>

<div class="container">
    <header>
        <h1>MyESMP Server Control</h1>
        <span class="status-badge status-online">Server Online</span>
    </header>

    <div class="section">
        <h2>Quick Access</h2>
        <div class="links">
            <a href="/phpmyadmin" class="btn">phpMyAdmin</a>
            <a href="?info=1" class="btn btn-secondary">PHP Info</a>
        </div>
        <p style="font-size: 14px; color: #666; margin-top: 15px;">
            <strong>CLI Access:</strong> To use <code>composer</code>, <code>npm</code>, or <code>mysql</code>, click the <strong>Terminal (Shell)</strong> button in the MyESMP Control Panel.
        </p>
    </div>

    <?php
    if (isset($_GET['info'])) {
        phpinfo();
        exit;
    }

    $exclude = ['.', '..', 'css', 'images', 'js'];
    $dirs = [];
    $files = [];

    foreach (scandir('./') as $item) {
        if (in_array($item, $exclude)) continue;

        if (is_dir($item)) {
            $dirs[] = $item;
        } elseif (strtolower(pathinfo($item, PATHINFO_EXTENSION)) == 'php' && $item != 'index.php') {
            $files[] = $item;
        }
    }
    ?>

    <div class="section">
        <h2>Projects (Subdirectories)</h2>
        <?php if (empty($dirs)): ?>
            <p style="color: #888;">No subdirectories found in /www.</p>
        <?php else: ?>
            <div class="grid">
                <?php foreach ($dirs as $dir): ?>
                    <a href="/<?php echo htmlspecialchars($dir); ?>" class="card">
                        <span class="card-title"><?php echo htmlspecialchars($dir); ?></span>
                        <span class="card-meta">Folder</span>
                    </a>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>
    </div>

    <div class="section">
        <h2>PHP Scripts</h2>
        <?php if (empty($files)): ?>
            <p style="color: #888;">No standalone PHP files found in /www.</p>
        <?php else: ?>
            <div class="grid">
                <?php foreach ($files as $file): ?>
                    <a href="/<?php echo htmlspecialchars($file); ?>" class="card">
                        <span class="card-title"><?php echo htmlspecialchars($file); ?></span>
                        <span class="card-meta">Script</span>
                    </a>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>
    </div>

    <div class="footer">
        Powered by MyESMP Stack &bull; C:\myesmp\www
    </div>
</div>

</body>
</html>
