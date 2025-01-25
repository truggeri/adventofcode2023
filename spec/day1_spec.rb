require_relative '../lib/day1'

RSpec.describe 'day1' do
  subject { solve(input) }

  context 'when example' do
    let(:input) do
      '1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet'
    end

    it 'gives correct answer' do
      expect(subject).to eq(142)
    end
  end

  context 'when part1' do
    let(:input) { load_fixture('day1') }

    it 'gives correct answer' do
      expect(subject).to eq(54_940)
    end
  end
end
