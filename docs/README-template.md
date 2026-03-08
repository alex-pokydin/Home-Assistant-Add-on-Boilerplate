<img src="logo.png" alt="Your Add-on Name" width="300">

# Your Add-on Name

One-sentence description of what this add-on does for the user.

## Features

- Feature one — what it does in plain language
- Feature two
- Feature three

## Installation

1. Add this repository to your Home Assistant add-on store:

   [![Add repository](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https://github.com/YOUR_USER/YOUR_REPO)

   Or manually: **Settings → Add-ons → Add-on Store → ⋮ → Repositories** → paste the repo URL.

2. Find **Your Add-on Name** in the store and click **Install**.
3. Configure the add-on (see below), then click **Start**.
4. Open the **Web UI** from the add-on info page.

## Configuration

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `example_option` | string | `""` | Describe what this controls |

Example configuration:

```yaml
example_option: "value"
```

## Usage

Explain how the user interacts with the add-on after installation.

## FAQ

**Q: Something common users might ask?**
A: Answer here.

## Support

- [Report an issue](https://github.com/YOUR_USER/YOUR_REPO/issues)
- [Discussions](https://github.com/YOUR_USER/YOUR_REPO/discussions)

---

## Development

For contributors — see the dev setup below.

```bash
pnpm install
pnpm prisma:generate
pnpm dev
```

Client: `http://localhost:5173` · Server: `http://localhost:3001`

## License

MIT
