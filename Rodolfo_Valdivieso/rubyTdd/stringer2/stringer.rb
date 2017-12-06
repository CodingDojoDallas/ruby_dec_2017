require "stringer/version"

module Stringer
  # Your code goes here...
  def self.spacify *strings
        string = ""
        strings.each do |s|
            string += " " + s
        end
        string[1..string.length]
  end

  def self.minify(string, len)
  		if len >= string.length 
  			return string
  		elsif len < 0
  			return raise 'Number cannot be longer negative'
  		else
  			return string[0..len]+'...'
  		end
  end

  def self.replacify(string, subStr, newSubstr)
  		arr = []
  		newStr = ""
  		(0..(string.length - subStr.length)).each do |i|	
  			#arr.push(string[i...i+subStr.length])
  			if string[i...i+subStr.length] == subStr
  				# newStr += newSubstr
  				return (string[0...i]+newSubstr+string[i+subStr.length...string.length])
  			end
  		end
  		return string
  		#return string.gsub(subStr, newSubstr)
  end

  def self.tokenize(string)
  	return string.split.to_a
  end

  def self.removify(string, remove)
  	return string.gsub(remove, "").gsub("  ", " ")
  end
end
