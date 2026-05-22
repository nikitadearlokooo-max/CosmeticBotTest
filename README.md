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

Use a Koyeb Web Service on the `free` instance. In Koyeb, the bot runs in webhook mode and listens on the provided `PORT`.

Koyeb free instances cannot be used for Worker Services, so the bot automatically switches from local polling to webhook mode when `PORT` and `KOYEB_PUBLIC_DOMAIN` are present.

Settings:

- Build command: `pip install -r requirements.txt`
- Start command: `python telegram_bot_cosmetic_NEW.py`
- Environment variable: `BOT_TOKEN`
- Instance type: `free`
- Service type: Web Service

Do not upload `.env.txt` to GitHub. It is ignored by `.gitignore`.
