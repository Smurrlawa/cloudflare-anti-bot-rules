{
  line = $0
  in_str = 0
  output = ""
  for (i = 1; i <= length(line); i++) {
    c = substr(line, i, 1)
    if (c == "\"") in_str = !in_str
    if (!in_str && c == "/" && substr(line, i, 2) == "//") break
    output = output c
  }
  if (output ~ /^[[:space:]]*$/) next
  print output
}
