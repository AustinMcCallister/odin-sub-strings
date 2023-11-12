# frozen_string_literal: true

def substrings(string, dictionary)
  dictionary.each_with_object({}) do |substring, hash|
    if string.downcase.include?(substring.downcase)
      # Positive lookahead prevents consuming characters in another valid substring
      hash[substring] = string.downcase.scan(/(?=#{substring.downcase})/).count
    end
  end
end
