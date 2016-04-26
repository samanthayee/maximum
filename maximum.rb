class Array
  def bubblesort1
    length.times do |j|
      for i in 1...(length - j)
        if self[i] < self[i - 1]
          self[i], self[i - 1] = self[i - 1], self[i]
        end
      end
    end
    self
  end

   def bubblesort2
    each_index do |index|
      (length - 1).downto( index ) do |i|
        self[i-1], self[i] = self[i], self[i-1] if self[i-1] < self[i]
      end
    end
    self
  end
end

ary = [2, 42, 22, 02]
ary.bubblesort2
p "max of 2, 42, 22, 02 is: #{ary[0]}"

ary2 = []
ary.bubblesort1
p "max on empty set is: #{ary2[0].inspect}"

ary3 = [-23, 0, -3]
ary3.bubblesort2
p "max of -23, 0, -3 is: #{ary3[0]}"

ary4 = [6]
ary4.bubblesort1
p "max of just 6 is: #{ary4[0]}"