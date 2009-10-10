class VersionString < String
  
  def <=>(other)
    a1, a2 = self.class.make_comparable(self, other)
    a1.zip(a2).each do |pair|
      if pair[0] < pair[1]
        return -1
      elsif pair[0] > pair[1]
        return 1
      end
    end
    0
  end
  
  def self.make_comparable(s1, s2)
    a1 = s1.split(".").map(&:to_i)
    a2 = s2.split(".").map(&:to_i)
    len1, len2 = a1.length, a2.length
    if len1 < len2
      a1.concat([0] * (len2 - len1))
    elsif len1 > len2
      a2.concat([0] * (len1 - len2))
    end
    [a1, a2]
  end
  
end
