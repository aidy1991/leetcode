# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  hash = {}
  nums.each do |num|
    if hash.has_key? num
      hash.delete num
    else
      hash[num] = 0
    end
  end
  hash.keys
end

p single_number [1, 2, 1, 3, 2, 5]
