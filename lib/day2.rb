  class Day2
    LIMITS = { red: 12, green: 13, blue: 14 }.freeze
    REVEAL_RE = /(?<num>\d+) (?<clr>.*)/

    def solve(input)
      return if input.nil?

      numbers = parse(input)
      numbers.sum
    end

    def parse(input)
      results = []
      input.each_line do |line|
        valid = true
        splits = line.split(': ')
        id = splits[0].delete_prefix('Game ').to_i
        splits[1].split('; ').each do |game|
          game.split(', ').each do |color|
            m = color.match(REVEAL_RE)
            valid = false unless valid?(m[:num], m[:clr])
          end
        end
        results.push(id) if valid
      end
      results
    end

    def valid?(num, color)
      return false unless LIMITS.key?(color.to_sym)

      num.to_i <= LIMITS[color.to_sym]
    end
  end