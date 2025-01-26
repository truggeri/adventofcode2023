  class Day1
  def solve(input)
    return if input.nil?

    numbers = parse(input)
    return numbers.sum
  end

  def parse(input)
    results = []
    input.each_line do |l|
      result = 0
      head_pointer = 0
      while head_pointer < l.length do
        if ('0'..'9').cover?(l[head_pointer])
          result += l[head_pointer].to_i * 10
          break
        end
        head_pointer += 1
      end

      tail_pointer = l.length - 1
      while tail_pointer >= 0 do
        if ('0'..'9').cover?(l[tail_pointer])
          result += l[tail_pointer].to_i
          break
        end
        tail_pointer -= 1
      end
      results.push(result)
    end
    results
  end
end