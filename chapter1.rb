# | => or (e1|e2|e3...e)
regexp = /renato|renan|pablo|ana/
p "renato".match(regexp)
p "renan".match(regexp)
p "pablo".match(regexp)
p "ana".match(regexp)

# Matches the +(e) element longer
regexp = /ar+/
p "ar".match(regexp)
p "arr".match(regexp)
p "arrrb".match(regexp)

# Matchers James variations
regexp1 = /[a-zA-Z]+/
regexp2 = /[a-z]+/i # with modifier
p "james".match(regexp1)
p "jameson".match(regexp1)
p "Blackbeard".match(regexp1)

# Matching name with 2 words
regexp1 = /[a-z0-9\s]+/i
regexp2 = %r{[a-z0-9\s]+}i # => equivalent to /[a-z0-9\s]+/
regexp3 = /[\w\d\s]+/i     # => refactored way to do the same thing
p "Captain hook".match(regexp1)
p "Long John the 3rd".match(regexp3)

# Matches domain
regexp1 = /\w+@\w+\.\w+/i
p "sara@example.com".match(regexp1)
p "renato_ny@live.com".match(regexp1)

# Escaping characters
# +  -> matches a character 1 or more times
# \+ -> Matches literal "+" character
# .  -> matches any character except newline
# \. -> matches literal "." charecter 
regexp1 = /^\w+@\w+\.(com|edu|org|net)$/i
p "renato@sample.com".match(regexp1)
p "renato@sample.edu".match(regexp1)
p "renato@sample.net".match(regexp1)
p "renato@sample.org".match(regexp1)

# Confirmation
regexp = /ok/
string = "ok, i will do it"
p(string.match(regexp))

