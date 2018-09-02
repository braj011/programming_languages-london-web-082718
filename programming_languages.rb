require 'pry'

def reformat_languages(languages)

  new_hash = {}
  languages.each do |style, value| 
    value.each do |language|
      # value.each creates several arrays from our original hash. Our hash does not have arrays so this was unexpected.
      if new_hash[language[0]] 
        # if language already exists
        new_hash[language[0]][:style] << style
        # add the new style to the language's style array value
      else
      new_hash[language[0]] = {language[1], :style => [style]}
      # language[1] should be written as :type =>  language[0]
      end
    end
  end
  p new_hash
  new_hash = {} 
  languages.each do |style, lang| 
    
    # style refers to oo or functional (keys)
    # lang refers to each language within 
    
    lang.each do |type, type_val| 
      
      # type refers to :type symbol (key)
      # type_val refers to interpreted or compiled values
    
end
