def caesar_cipher(string, shift)
  asc_CAP_ltr_rang = [65, 90] 
  asc_low_ltr_rang = [97, 122] 
  # create range checks for ASC conversion

  shiftedValuesArray = []

  string.split('').each do |to_alter|

    unless (to_alter.ord.between?(asc_CAP_ltr_rang.first, asc_CAP_ltr_rang.last) || to_alter.ord.between?(asc_low_ltr_rang.first, asc_low_ltr_rang.last))
      shiftedValuesArray << to_alter
    # if the character is not a letter, add it to the array
    else
      if (((to_alter.ord <  asc_CAP_ltr_rang.last) && (to_alter.ord + shift >  asc_CAP_ltr_rang.last)) || ((to_alter.ord >  asc_low_ltr_rang.first) && (to_alter.ord + shift >  asc_low_ltr_rang.last)))
        shiftedValuesArray << (to_alter.ord + shift - 26)
      # if (character asc + shift) goes above that char's letter range, reset the scale
      elsif (((to_alter.ord <  asc_CAP_ltr_rang.last) && (to_alter.ord + shift <  asc_CAP_ltr_rang.first)) || ((to_alter.ord >  asc_low_ltr_rang.first) && (to_alter.ord + shift <  asc_low_ltr_rang.first)))
        shiftedValuesArray << (to_alter.ord + shift + 26)
      # if (character asc + shift) goes below that char's letter range, reset the scale
      else
        shiftedValuesArray << (to_alter.ord + shift)
      end
    end
  end
  shiftedValuesArray.map{|value| value.chr}.join
  # convert asc values back to letters and ouput as single string
end

puts(caesar_cipher("What a string!", 5))