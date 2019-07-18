# | => or (e1|e2|e3...)
regexp = /renato|renan|pablo/
p "renato".match regexp
p "renan".match regexp
p "pablo".match regexp
p "ana".match regexp

# Matches the +(e) element longer
regexp = /ar+/
p "ar".match regexp
p "arr".match regexp
p "arrrb".match regexp

# Matchers James variations
regexp1 = /[a-zA-Z]+/
regexp2 = /[a-z]+/i # with modifier
p "james".match regexp1
p "jameson".match regexp1
p "Blackbeard".match regexp1

# Matching name with 2 words
regexp1 = /[a-z0-9\s]+/i
regexp2 = %r{[a-z0-9\s]+}i # => equivalente a /[a-z0-9\s]+/
regexp3 = /[\w\d\s]+/i     # => refactored way to do something
p "Captain hook".match regexp1
p "Long John the 3rd".match regexp3