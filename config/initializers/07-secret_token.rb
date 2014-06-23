# Secret key for verifying the integrity of signed cookies.

if ConcertoConfig[:secret_token] == ""
  ConcertoConfig.set("secret_token", SecureRandom.hex(64))
end

Concerto::Application.config.secret_token = ConcertoConfig[:secret_token]
