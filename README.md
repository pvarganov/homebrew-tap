# pvarganov/homebrew-tap

Homebrew tap for pvarganov tools.

## Install

```bash
brew tap pvarganov/tap
```

### lcli — CLI for Linear issue tracker

```bash
brew install lcli
```

### slack-threads — чтение Slack-тредов по-русски

```bash
brew install --cask pvarganov/tap/slack-threads
```

[Исходники и документация](https://github.com/pvarganov/slack-threads). Приложение
не нотаризовано: если macOS откажется его открывать, разрешите один раз в Системных
настройках → Конфиденциальность и безопасность → «Открыть всё равно», либо снимите
карантин командой `xattr -dr com.apple.quarantine /Applications/slack-threads.app`.

Переводчик работает через `claude` CLI — его нужно поставить и залогинить отдельно.
