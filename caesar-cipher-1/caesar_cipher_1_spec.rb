require_relative File.basename(__FILE__, '_spec.rb')

context CeasarCipher1 do

  subject do
    CeasarCipher1.new
  end

  [
      ['11', 'middle-Outz', '2', 'okffng-Qwvb'],
      ['11', 'aAyYzZ', '3', 'dDbBcC'],
      ['11', 'aAyYzZ', '0', 'aAyYzZ'],
      ['11', 'aAyYzZ', '26', 'aAyYzZ'],
      ['11', 'aAyYzZ', '27', 'bBzZaA']
  ].each do |dataset|
    specify "#{dataset[0]} #{dataset[1]} #{dataset[2]} => expecting #{dataset[3]}" do
      subject.encryption_key = dataset[2].to_i
      encrypted = subject.encrypt(dataset[1])
      expect(encrypted).to eq(dataset[3])
    end
  end

end