# CosmeticBotTest

Python Telegram bot for studying a cosmetic studio handbook and passing a randomized test.

## Files

- `telegram_bot_cosmetic_NEW.py` - current bot entry point.
- `.env.txt` - local environment placeholder.
- `venv/` - local Python virtual environment.
- `render.yaml` - Render Background Worker configuration.
- `Procfile` - worker command for platforms that support Procfile.

## Local Run

Create `.env.txt` locally:

```text
BOT_TOKEN=your_token_from_BotFather
```

Run in a visible console:

```bat
start_bot_console.bat
```

Or run manually:

```powershell
python telegram_bot_cosmetic_NEW.py
```

## Deploy To Koyeb

Use a Koyeb Worker, not a Web Service, because this bot uses Telegram polling and does not open an HTTP port.

Settings:

- Build command: `pip install -r requirements.txt`
- Start command: `python telegram_bot_cosmetic_NEW.py`
- Environment variable: `BOT_TOKEN`

Do not upload `.env.txt` to GitHub. It is ignored by `.gitignore`.
