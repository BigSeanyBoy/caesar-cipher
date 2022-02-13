require './cipher.rb'

RSpec.describe 'Cipher Tests' do
  describe 'translates single words' do

    it 'returns encoding of lowercase word' do
      encoded_text = translate('hippopotamus', 5)
      result = 'mnuututyfrzx'
      expect(encoded_text).to eq(result)
    end

    it 'returns encoding of word with same case' do
      encoded_text = translate('HiPPopotAmus', 5)
      result = 'MnUUtutyFrzx'
      expect(encoded_text).to eq(result)
    end

    it 'returns decoding of word' do
      encoded_text = translate('MnUUtutyFrzx', -5)
      result = 'HiPPopotAmus'
      expect(encoded_text).to eq(result)
    end
  end

  describe 'translates phrases' do

    it 'returns encoding of phrase' do
      encoded_text = translate('The quick brown fox jumps over the lazy dog', 8)
      result = 'Bpm ycqks jzwev nwf rcuxa wdmz bpm tihg lwo'
      expect(encoded_text).to eq(result)
    end

    it 'returns encoding of phrase with punctuation' do
      encoded_text = translate('Hello, my name is Sean. I like your hat!', 2)
      result = 'Jgnnq, oa pcog ku Ugcp. K nkmg aqwt jcv!'
      expect(encoded_text).to eq(result)
    end

    it 'returns encoding of phrase with numbers' do
      encoded_text = translate('D0 y0u h4v3 4ny c0rn?', 20)
      result = 'X0 s0o b4p3 4hs w0lh?'
      expect(encoded_text).to eq(result)
    end

    it 'returns decoding of phrase' do 
      encoded_text = translate('Jgnnq, oa pcog ku Ugcp. K nkmg aqwt jcv!', -2)
      result = 'Hello, my name is Sean. I like your hat!'
      expect(encoded_text).to eq(result)
    end
  end

end