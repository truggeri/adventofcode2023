require_relative '../lib/day2'

RSpec.describe Day2 do
  subject { described_class.new.solve(input) }

  context 'when example' do
    let(:input) do
      'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green'
    end

    it 'gives correct answer' do
      expect(subject).to eq(8)
    end
  end

  context 'when part1' do
    let(:input) { load_fixture('day2') }

    it 'gives correct answer' do
      expect(subject).to eq(2156)
    end
  end
end
