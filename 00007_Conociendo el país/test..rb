module Pepita
  def self.energia
    @energia
  end  
  
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
      expect(Pepita.ciudad).to eq Iruya
    end
    
    it 'entiende el mensaje volar_hacia!' do
      expect(Pepita).to respond_to :volar_hacia!
    end
    
    it 'pierde 100 unidades de energía cuando vuela' do
      Pepita.volar_hacia!(Obera)
      expect(Pepita.energia).to eq 90
    end    
    
    it 'cambia de ciudad cuando vuela' do
      Pepita.volar_hacia!(Obera)
      expect(Pepita.ciudad).to eq Obera
    end    
  end
end