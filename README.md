# 🚀 Omnium — The Minimalist Crypto Payment Gateway

[![License](https://img.shields.io/github/license/your-username/omnium )](https://github.com/your-username/omnium/blob/main/LICENSE )
[![Build Status](https://img.shields.io/github/workflow/status/your-username/omnium/CI )](https://github.com/your-username/omnium/actions )
[![npm version](https://img.shields.io/npm/v/omnium )](https://www.npmjs.com/package/omnium )

> Built on Lisk | Accepts $IDRX (Indonesian Rupiah-backed ERC20)

---

## 💡 What is Omnium?

Omnium is a **supercharged, minimalistic crypto payment gateway** designed for developers who want to accept payments in **IDRX**, a stablecoin pegged 1:1 to the Indonesian Rupiah (IDR), all powered by the **Lisk blockchain ecosystem**.

No fluff. No bloat. Just clean, fast, and secure crypto payments — *made simple*.

---

## 🔥 Why Use Omnium?

✅ **Minimalist Design** – Lightweight codebase, easy to integrate  
🌐 **Lisk-Powered** – Leverage the scalable and developer-friendly Lisk chain  
💰 **Accept IDRX** – Tap into Indonesia’s booming crypto economy with an IDR-pegged token  
⚡ **Fast & Secure** – Instant transaction verification + battle-tested smart contracts  
🧑‍💻 **Developer First** – Simple APIs, clear documentation, and modular architecture  
🌱 **Open Source** – Because transparency matters  

---

## 📦 Features

| Feature               | Description |
|----------------------|-------------|
| 💳 Accept IDRX        | Payments in Rupiah-stable crypto. No volatility headaches. |
| 🧩 Modular API         | Plug-and-play integration with any e-commerce or SaaS platform. |
| 🔐 Secure by Default   | Smart contract audits, encrypted payloads, and more. |
| 📊 Transaction Dashboard | View real-time payment status and history. |
| 🧠 Lisk Chain Integration | Fast finality, low fees, and EVM compatibility. |

---

## 🛠️ How to Use Omnium

### 1. Connect Wallet on Omnium
Open https://omnium-pg.vercel.app/, then connect wallet. You can use email, or metamask

### 2. Get API key
Generate api key on Merchant dashboard

### 3. Get API key on Merchant Dashboard
Navigate to API Keys section, click Create New Api Key
### 3. Make a test payment
Use our Postman collection or send a POST request:

METHOD : POST 

https://omnium-backend-production.up.railway.app/api/order

```
{
	"data" : {
	"seller":"0x753dFC03b4d37B3a316D0Fe5aB9F677C0D3C20f8",
	"product":"Nike air jordan",
	"quantity":"2",
	"price" : 1000000,
	"callbackUrl":"https://your-backend.com/"
 }
}
```


## 🤝 Want to Contribute?

We’re open to collaborators! Whether you're a dev, designer, or just love crypto payments — we need your help to make Omnium better.

1. Fork it 🍴  
2. Create your feature branch (`git checkout -b feat/new-feature`)  
3. Commit your changes (`git commit -m 'Add new feature'`)  
4. Push to the branch (`git push origin feat/new-feature`)  
5. Open a pull request 🙌  

---

## 📢 Roadmap

| Phase       | Goal |
|-------------|------|
| MVP         | Live IDRX payments on Lisk |
| v1.1        | Add webhooks for payment confirmation |
| v1.2        | Merchant dashboard for analytics |
| v2.0        | Multi-chain support (Polygon, Binance, etc.) |
| v2.1        | Invoice generation & recurring payments |

---

## 🧾 License

MIT © [Your Name or Company]  
See [LICENSE](https://github.com/your-username/omnium/blob/main/LICENSE ) for details.

---

## 🚨 Disclaimer

This software is provided as-is, without warranty of any kind. Use at your own risk. We recommend thorough testing before deploying to production.

---

## 👇 Let’s Build the Future of Crypto Payments — Together!

Got questions? Want to contribute or sponsor this project?

📧 Email: [youremail@example.com]  
🐦 Twitter: [@OmniumPay]  
💬 Telegram: [t.me/OmniumChat]  
🔗 Website: [www.omniumpay.io]

---

✨ **Omnium** – Where simplicity meets power in crypto payments.  
🚀 Accept IDRX today. On Lisk. For everyone.

