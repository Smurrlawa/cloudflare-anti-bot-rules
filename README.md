# 🛡️ Cloudflare Firewall Rule for Laravel Hardening

This repository contains a simple **Cloudflare Firewall Rule** to block common malicious scanning patterns and bot requests that target sensitive Laravel or PHP-related files and paths.

---

### 📋 Explanation

This is an easy way to reduce bot spam traffic, block common exploit attempts, protect sensitive files, and lower costs in pay-per-use cloud environments.

---

### 🔧 Firewall Rule

We now provide two separate config files to support different Cloudflare plans:

- [`free.config`](free.config) – For **Free** and **Pro** plans (uses only basic operators like `contains`)
- [`business.config`](business.config) – For **Business** and **Advanced WAF** plans (includes `matches` for regex support)

Apply the one that fits your Cloudflare subscription.

---

### 📌 Notes

- These rules **block common exploit scanners** and **bots** targeting Laravel, WordPress, or legacy PHP environments.
- They help block access to `.env`, `composer.*`, `phpinfo`, and other sensitive endpoints.
- You can apply this as a **Custom Firewall Rule** via your Cloudflare dashboard under **WAF > Custom Rules**.

---

### ⚠️ Disclaimer

- ⚠️ **This may break your application** if it legitimately uses any of the blocked paths or file types (e.g., `.txt`, `.sh`).
- Always test in **"Log"** or **"Challenge"** mode before switching to **"Block"**.
- Review carefully before using in production environments.

---

### 🤝 Contributing

Got ideas for improvement? Open a PR! I'd love to refine this rule to cover more threats while reducing false positives.

---

### 🙏 Thank You

A big thanks to the creator of the video [Protecting Laravel Cloud endpoints](https://youtu.be/aJIYcFfAm-c?si=rjXaRUgcSQBhi_0t) for highlighting this attack vector and sharing an elegant solution. 👏
