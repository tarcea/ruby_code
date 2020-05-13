def convert_temp(temp, input_scale: '', **options)
  option = options.each_value.first
  case input_scale.downcase
  when 'celsius'
    if option == 'fahrenheit'
      ctof = (temp * (9.0 / 5) + 32).truncate(2)
    elsif option == 'kelvin'
      ctok = temp + 273.15
    end
  when 'fahrenheit'
    if option == 'celsius'
      ftoc = ((temp.to_f - 32) * (5.0 / 9)).truncate(2)
    elsif option == 'kelvin'
      ftok = ((temp.to_f - 32) * (5.0 / 9) + 273.15).truncate(2)
    end
  when 'kelvin'
    if option == 'celsius'
      ktoc = temp - 273.15
    elsif option == 'fahrenheit'
      ktof = ((temp - 273.15) * (9.0 / 5) + 32).round(2)
    end
  else
    puts "sugi o ceapa.."
  end
end

# (0°C × 9/5) + 32 = 32°F
# 0°C + 273.15 = 273,15K
# (0°F − 32) × 5/9 = -17,78°C
# (0°F − 32) × 5/9 + 273.15 = 255,372K
# 0K − 273.15 = -273,1°C
# (0K − 273.15) × 9/5 + 32 = -459,7°F

p convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
p convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
