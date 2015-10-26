# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each do |num|
    hash[num] = 1
  end
  hash.length != nums.length
end
