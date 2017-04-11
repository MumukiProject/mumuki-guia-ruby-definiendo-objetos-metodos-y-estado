module Pepita
  def self.energia
    @energia
  end
end

describe 'Pepita' do
  it 'tiene inicialmente 100 unidades de energía' do
    expect(Pepita.energia).to eq 100
  end
  
  it 'pierde 20 unidades de energía cuando vuela en círculos' do
    Pepita.volar_en_circulos!
    expect(Pepita.energia).to eq 80
  end

  it 'gana 10 unidades de energía cuando come una lombriz' do
    Pepita.comer_lombriz!
    expect(Pepita.energia).to eq 110
  end
end