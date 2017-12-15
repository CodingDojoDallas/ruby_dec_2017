require "stringer/version"

module Stringer
	def self.spacify(*strings)
		strings.join(" ")
		end

	def self.minify(string, max)
		if max > string.length
			return string
		end
		"#{string[0...max]}..."
	end

	def self.replacify(string, word, switch)
		string = string.split(" ")

		string.map! do |x| 
			if x == word
				switch
			else
				x
			end
		end
		string.join(" ")
	end

	def self.tokenize(string)
		string.split(" ")
	end

	def self.removify(string, remove)
		string = string.split(" ")
		string.reject! { |x| x == remove }
		string.join(" ")
	end
end
