cask "slack-threads" do
  version "0.1.0"
  sha256 "30bed2bc12c3b25bc532507baf4cfec0d48f99888ae4301f853393c32e438fd6"

  url "https://github.com/pvarganov/slack-threads/releases/download/v#{version}/slack-threads-#{version}.zip"
  name "Slack Threads"
  desc "Reads Slack threads in Russian and answers them in English"
  homepage "https://github.com/pvarganov/slack-threads"

  depends_on macos: :ventura

  app "slack-threads.app"

  # Бандл подписан ad-hoc, без сертификата разработчика Apple, поэтому
  # Gatekeeper отказался бы его открыть. Снимаем карантин здесь, чтобы
  # каждому не пришлось делать это руками: приложение собрано из
  # исходников этого же проекта, ссылка на них — в homepage.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/slack-threads.app"]
  end

  zap trash: [
    "~/Library/Application Support/slack-threads",
    "~/Library/Preferences/com.wails.slack-threads.plist",
    "~/Library/Saved Application State/com.wails.slack-threads.savedState",
  ]

  caveats <<~EOS
    Приложению нужны две вещи, которые оно не ставит само:

      1. claude CLI, залогиненный в ваш аккаунт Anthropic — переводчик
         работает через него. Установка: brew install --cask claude-code,
         затем запустите claude и войдите.

      2. Slack-приложение с user-токеном (xoxp-) и шестью scopes.
         Как его завести — в README:
         https://github.com/pvarganov/slack-threads#шаг-3-slack-приложение

    Бандл подписан ad-hoc и не нотаризован: Apple его не проверяла.
    Карантин снимается при установке, иначе macOS отказался бы открывать
    приложение. Исходники, из которых оно собрано, — в homepage.
  EOS
end
