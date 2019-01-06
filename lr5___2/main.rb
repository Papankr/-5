def part2(str, crypt)
  resultstr = ''
  curcrypt = crypt.to_s.split(//).map(&:to_i).cycle

  str.each_char do |char|
    if char == ' '
      resultstr += char
    else
      enc = char.ord + curcrypt.next
      resultstr += if enc > 'z'.ord
                     ('a'.ord + enc.ord % 'z'.ord - 1).chr
                   else
                     enc.chr
                   end
    end
  end

  resultstr
end
