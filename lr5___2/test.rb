#!/usr/bin/env ruby

require 'test/unit'
require '/main.rb'

# Test for part2
class Test2 < Test::Unit::TestCase
  def test1
    words = rand(1..10)
    curcrypt = [3, 4, 6, 2, 4].cycle
    in_str = []
    exp_str = []
    words.times do |_i|
      word_in = []
      word_out = []
      rand(0..20).times do |_j|
        enc = ('a'.ord + rand('z'.ord - 'a'.ord)).chr
        word_in << enc
        enc = enc.ord + curcrypt.next
        word_out << if enc > 'z'.ord
                      ('a'.ord + enc.ord % 'z'.ord - 1).chr
                    else
                      enc.chr
                    end
      end
      in_str << word_in.join
      exp_str << word_out.join
    end

    inp = in_str.join(' ')
    exp = exp_str.join(' ')

    assert_equal(exp, part2(inp, 34_624))
  end
end
