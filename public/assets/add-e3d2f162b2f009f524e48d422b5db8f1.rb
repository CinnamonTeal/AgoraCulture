def add(a1, a2)
if a1.length > a2.length
    counter = a1.length
    diff = a1.length - a2.length
    while diff > 0
        a2.insert(0,0)
        diff = diff - 1
    end
elsif a2.length > a1.length
    counter = a2.length
    diff = a2.length - a1.length
        while diff > 0
        a1.insert(0,0)
        diff = diff - 1
    end
end



result = []
while counter >= 0
   sum = a1.pop + a2.pop
   result << sum
   counter = counter - 1
end

result.reverse

return result
end
