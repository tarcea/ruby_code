require_relative '../convert_temp.rb'

describe 'convert_temp' do
    it "should convert Celsius to Fahrenheit" do
      expect(convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')).to eq 32.0
    end

    it "should convert Celsius to Kelvin" do
      expect(convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')).to eq 273.15
    end

    it "should convert Fahrenheit to Celsius" do
      expect(convert_temp(0, input_scale: 'fahrenheit', output_scale: 'celsius')).to eq -17.77
    end

    it "should convert Fahrenheit to Kelvin" do
      expect(convert_temp(0, input_scale: 'fahrenheit', output_scale: 'kelvin')).to eq 255.37
    end

    it "should convert Kelvin to Celsius" do
      expect(convert_temp(0, input_scale: 'kelvin', output_scale: 'celsius')).to eq -273.15
    end

    it "should convert Kelvin to Fahrenheit" do
      expect(convert_temp(0, input_scale: 'kelvin', output_scale: 'fahrenheit')).to eq -459.67
    end

end

