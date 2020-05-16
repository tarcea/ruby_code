def convert_temp(temp, input_scale: '', **options)
  option = options.each_value.first
  case input_scale.downcase
  when 'celsius'
    if option == 'fahrenheit'
      res = (temp * (5.0 / 9.0) + 32).truncate(2)
    elsif option == 'kelvin'
      res = (temp + 273.15)
    end
  when 'fahrenheit'
    if option == 'celsius'
      res = ((temp - 32) * (5.0 / 9.0)).truncate(2)
    elsif option == 'kelvin'
      res = ((temp - 32) * (5.0 / 9.0) + 273.15).truncate(2)
    end
  when 'kelvin'
    if option == 'celsius'
      res = (temp - 273.15).truncate(2)
    elsif option == 'fahrenheit'
      res = (temp * (9.0 / 5) + 32 + 273.15).truncate(2)
    end
  else
    puts "sugi o ceapa.."
  end
    res
end

p convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
p convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
