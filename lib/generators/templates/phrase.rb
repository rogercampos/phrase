Phrase.configure do |config|
  # Enable or disable the PhraseApp context editor in general
  config.enabled = true

  # Fetch your project auth token after creating your first project 
  # in the PhraseApp translation center.
  config.auth_token = "<%= options[:auth_token] %>"

  # Configure an array of key names that should not be handled 
  # with PhraseApp. This is useful when a key causes problems
  # (Such as keys that are used by Rails internally)
  config.ignored_keys = []
end
