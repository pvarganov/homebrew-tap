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
собрано локально и не нотаризовано: при первом открытии macOS попросит подтверждение
(Системные настройки → Конфиденциальность и безопасность → «Открыть всё равно»).
Чтобы обойтись без этого вопроса, добавьте `--no-quarantine`.

Переводчик работает через `claude` CLI — его нужно поставить и залогинить отдельно.
