.=== AI Engine (Pro) - The Chatbot, AI Framework & MCP for WordPress ===
Contributors: TigrouMeow
Tags: ai, chatbot, gpt, claude, openai
Donate link: https://www.patreon.com/meowapps
Requires at least: 6.0
Tested up to: 6.9
Requires PHP: 7.4
Stable tag: 3.4.5
License: GPLv2 or later
License URI: https://www.gnu.org/licenses/gpl-2.0.html

AI meets WordPress. Your site can now chat, write poetry, solve problems, and maybe make you coffee.

== Description ==

**AI Engine connects WordPress with AI models.** Build intelligent chatbots, generate content, create AI forms, and automate tasks. All from your WordPress dashboard.

Please make sure you read the [disclaimer](https://meowapps.com/ai-engine/disclaimer/). For more information, check the official website of [AI Engine](https://meowapps.com/ai-engine/).

== Quick Intro ==

Hello! ☀️ I built AI Engine to bring OpenAI, Claude, and other AI models into WordPress. Create chatbots that understand your content, generate posts in your voice, translate instantly, create images, or build custom AI tools.

For developers: [internal APIs](https://ai.thehiddendocs.com/php-functions/), [REST endpoints](https://ai.thehiddendocs.com/public-rest-api/), [function calling](https://ai.thehiddendocs.com/function-calling/), and [MCP support](https://ai.thehiddendocs.com/mcp/). Build AI features, automate workflows, or create SaaS applications on WordPress.

Feeling overwhelmed? 🤪 Start simple: Create a chatbot. Then connect [Claude Code](https://ai.thehiddendocs.com/mcp/mcp-server-claude-code/), [Claude](https://ai.thehiddendocs.com/mcp/mcp-server-claude/), [ChatGPT](https://ai.thehiddendocs.com/mcp/mcp-server-chatgpt/), or [OpenClaw](https://openclaw.com/) through MCP, giving AI direct access to your site. Add [SEO Engine](https://wordpress.org/plugins/seo-engine/) and watch it manage SEO in ways you never imagined. You can even connect AI Engine to multiple WordPress sites and manage them all through conversation.

You'll be having a blast before you've explored everything.

== Core Modules ==

🤖 **Chatbots**
Create intelligent chatbots with customizable themes, realtime audio, and multi-file support. Features modular UI Builder, conversation memory, and MacOS-style components.

🎨 **Content & Media**
Generate content, translate text, create images and videos from prompts, and use Copilot in the WordPress editor to correct, enhance, translate, or rewrite text.

📝 **AI Forms (Pro)**
Build custom AI-powered forms that handle text, images, audio, or file uploads. Create advanced apps with conditional logic.

🧠 **Knowledge & Embeddings (Pro)**
Fine-tune models, create embeddings, and build knowledge bases from PDFs. Connect with Pinecone, Chroma, Qdrant, or OpenAI Vector Store for semantic search.

🔧 **Function Calling**
Connect AI to WordPress functions, WooCommerce, appointments, or custom APIs. Let AI interact with your site's data and services in real-time.

🛡️ **Security & Moderation**
IP banning, word filtering, and content moderation to keep your AI interactions safe.

💡 **Advisor**
AI-powered recommendations and insights to help you set up and optimize your WordPress site.

🔌 **Developer Tools**
Internal APIs, REST endpoints, MCP support, and extensive hooks. Build AI-driven features, automate workflows, or create SaaS applications.

== 🤖 Chatbots ==

Transform visitor interactions with intelligent, customizable chatbots.

**Features:**

* Modular UI Builder with containers, headers, footers
* Customizable themes and MacOS-style components
* Realtime audio conversations
* Multi-file upload support
* Discussion memory and history
* Cross-site embedding
* GDPR compliance tools

== 🎨 Content & Media ==

Create, refine, and visualize content with AI assistance.

**Copilot (Magic Wand):**

* Correct grammar and spelling
* Enhance text for readability and quality
* Make text longer or shorter
* Translate text and full posts
* Generate content from scratch
* Multi-block support in the WordPress editor

**Image & Video Tools:**

* Create images from text prompts
* Generate videos with AI (Sora)
* Edit existing images with AI
* Vision AI for image analysis
* Automatic alt text generation

== 📝 AI Forms (Pro) ==

Build powerful AI-driven forms and applications.

**Capabilities:**

* Text, image, audio, and file inputs
* Conditional logic and validation
* Custom AI-powered apps
* Multi-step workflows
* Result templates

== 🧠 Knowledge & Embeddings (Pro) ==

Create intelligent knowledge bases and semantic search.

**Vector Databases:**

* Chroma, Qdrant, Pinecone
* OpenAI Vector Store
* Automatic synchronization
* Dimension validation

**Smart Features:**

* PDF import with auto-chunking
* AI-powered search (Simple, Context-Aware, Smart)
* Content classification
* Personalized recommendations

== 🔧 Developer Tools ==

Extend WordPress with AI capabilities.
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