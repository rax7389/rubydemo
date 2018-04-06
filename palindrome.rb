str = gets 

def palidrome(str)
  centerUsed,count,center,c = false,0,'',''
  a,b = 0,str.size-1
  for i in (a...b)
    c = str[i]
    count = 0
    for j in (a...b)
      if str[j] == c
        count += 1
      end
      if count % 2 == 1
        if centerUsed == true && center != c
          return false
        else
          centerUsed = true
          center = c
        end
      end
    end
  end
  return true
end

res = palidrome str
puts res