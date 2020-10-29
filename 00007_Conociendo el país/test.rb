module Pepita
  def self.energia
    @energia
  end  
  
  def self.ciudad
    @ciudad
  end
end

describe '' do
  context 'Pepita' do
    it 'empieza con 100 de energía' do
      expect(Pepita.energia).to eq 100
    end
    
    it 'empieza en Iruya' do
      expect(Pepita.ciudad).to eq Iruya
    end
    
    it 'entiende el mensaje volar_hacia!' do
      expect(Pepita).to respond_to :volar_hacia!
    end
    
    it 'pierde 100 unidades de energía cuando vuela' do
      Pepita.volar_hacia!(Obera)
      expect(Pepita.energia).to eq 0
    end    
    
    it 'cambia de ciudad cuando vuela' do
      Pepita.volar_hacia!(Obera)
      expect(Pepita.ciudad).to eq Obera
    end    
  end
end