module Pepita
  def self.ciudad
    @ciudad
  end
end

describe '' do
  it 'Iruya existe' do
    expect(Iruya).to be
  end
  
  it 'Obera existe' do
    expect(Obera).to be
  end
  
  context 'Pepita' do
    it 'empieza en Iruya' do
      expect(Pepita.ciudad).to be Iruya
    end
  end
end