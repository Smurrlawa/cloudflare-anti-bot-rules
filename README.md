# 🛡️ Cloudflare Firewall Rule for Laravel Hardening

This repository contains a simple **Cloudflare Firewall Rule** to block common malicious scanning patterns and bot requests that target sensitive Laravel or PHP-related files and paths.

---

### 📋 Explanation

This is an easy way to reduce bot spam traffic, block common exploit attempts, protect sensitive files and reducing cost in pay-per-use cloud environments.

---

### 🔧 Firewall Rule

Here's the [expression](default.config) I currently use


---

### 📌 Notes

- This rule **blocks common exploit scanners** and **bots** targeting Laravel, WordPress, or legacy PHP environments.
- Works well for my use case right now — mostly blocking hits to `.env`, `composer.*`, `phpinfo`, and WordPress admin endpoints.
- You can apply this as a **Custom Firewall Rule** in your Cloudflare dashboard under **WAF > Custom Rules**.

---

### ⚠️ Disclaimer

- ⚠️ **This may break your application** if it uses any of the blocked paths or file types (like `.txt` or `.sh`).
- Always test in **"Log"** or **"Challenge"** mode before enabling **"Block"**.
- Review carefully before use in production environments.

---

### 🤝 Contributing

Got ideas for improvement? Open a PR! I'd love to refine this rule to cover more threats while reducing false positives.

---

### 🙏 Thank You
A big thanks to the creator of the video [Protecting Laravel Cloud endpoints](https://youtu.be/aJIYcFfAm-c?si=rjXaRUgcSQBhi_0t) for bringing up this issue again and for providing a clever solution 👏
