# Thought-stream
ThoughtStream: Reviving Authentic Dialogue
ThoughtStream is a text-based social platform built for humans who are allergic to algorithmic noise, influencer marketing, and sponsored feelings. It’s for those who want conversation, not conversion funnels.

Why ThoughtStream?
Text-Based Posts
No videos. No gifs. No distractions. Just thoughts, written with intention (or at least basic grammar).

Chronological Feed
Posts appear in the order they’re made. Radical, we know.

Thematic Tagging
Organize content by meaningful themes like mutual aid, urban post-capitalist gardening, or tea blends that slap.

Interest-Driven Discovery
An algorithm that suggests content based on your preferences—not whatever topic is being milked by 30,000 bots.

What We Don’t Do
No Crypto Bros
We like coins that buy tea, not vibes.

No Pyramid Schemes
If your “business” requires luring your cousin into debt, keep walking.

No Influencer Marketing
You will not be subtly sold face cream here. Or anything, really.

What You Get
A quiet, principled corner of the internet where thoughts flow freely, people reflect (instead of “like”), and you don’t need to game the algorithm to be heard. It’s for thinkers, questioners, soft anarchists, digital hermits, and the tea-fueled curious.

Join ThoughtStream and be part of a platform where real conversations can happen again.
# ThoughtStream Backend

A text-first, irony-fueled social platform API built for meaningful thought sharing in a world drowning in Reels and regret.

---

## 🚀 Features
- Express.js backend with SQLite (and optional Sequelize upgrade if you're feeling spicy)
- Fully RESTful API
- Input sanitization, validation, and detailed error handling
- Logging with Winston (yes, even your mistakes are logged now)
- Rate limiting, Helmet security headers
- Swagger docs at `/docs`
- Tested with Jest + Supertest, isolated in-memory DB
- Dockerized for your DevOps daydreams
- Optional PM2 config for VPS deployments

---

## 🐳 Local Development with Docker

```bash
git clone https://github.com/your-username/thoughtstream.git
cd thoughtstream
cp .env.example .env

# Build and run
docker-compose up --build
```

Your API will be live at `http://localhost:3001`

### Access Swagger Docs
```http
http://localhost:3001/docs
```

---

## 🧪 Run Tests
```bash
npm install
npm test
```
Tests use an in-memory SQLite DB, so nothing gets permanently polluted. You're welcome.

---

## 🔁 PM2 for VPS Deployment
If you prefer the VPS struggle:
```bash
npm install pm2 -g
pm run build
pm2 start ecosystem.config.js
```

---

## 📦 GitHub Actions CI
CI is automatically triggered on every push or pull request to `main`. It installs, tests, and judges your code.

---

## 📂 Project Structure
```
backend/
├── index.js               # Express app
├── swagger.json           # API documentation
├── ecosystem.config.js    # PM2 config
├── Dockerfile             # App image
├── docker-compose.yml     # Local orchestration
├── .env                   # Env vars (ignored)
├── .dockerignore          # Keeps images lean
├── tests/                 # Jest + Supertest
```

---

## 🧠 Contributions
Please contribute. We need all the help we can get.
Just no crypto bros or hustle culture types.

---

## 📜 License
MIT. Do what you want, just don’t blame us when your social network becomes sentient.
