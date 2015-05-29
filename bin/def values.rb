# Complete the solution so that it takes an array of keys and a default value and returns a hash with all keys set to the default value.

# solution([:draft, :completed], 0) # should return {draft: 0, completed: 0}

def solution (arr, def_value)
    answer = {}
    arr.each do |elem|
        answer[elem] = def_value
    end
    p answer
end

solution([:draft, :completed], 0)