# @param {String} s
# @return {Integer}
def title_to_number(s)
  i = 0
  r = 0
  s.reverse!
  s.chars do |c|
    ascii = c.ord - 'A'.ord + 1
    r += 26 ** i * ascii
    i += 1
  end
  r
end

p title_to_number 'A'
p title_to_number 'C'
p title_to_number 'Z'
p title_to_number 'AA'
