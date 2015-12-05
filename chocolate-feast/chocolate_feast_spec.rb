require_relative 'chocolate_feast'
# require 'test/spec'

context ChocolateFeast do

  subject do
    ChocolateFeast.new
  end

  specify '10 2 5' do
    subject.money = 10
    subject.price = 2
    subject.wrappers_required = 5
    expect(subject.chocolate_bars).to be(6)
  end

  specify '12 4 4' do
    subject.money = 12
    subject.price = 4
    subject.wrappers_required = 4
    expect(subject.chocolate_bars).to be(3)
  end

  specify '6 2 2' do
    subject.money = 6
    subject.price = 2
    subject.wrappers_required = 2
    expect(subject.chocolate_bars).to be(5)
  end
end