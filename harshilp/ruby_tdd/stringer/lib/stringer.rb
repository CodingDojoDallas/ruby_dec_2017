require "stringer/version"
module Stringer
    def self.spacify *strings
        string = strings.join(' ')
    end

    def self.minify str, maxLen
      str.length > maxLen ? str[0...maxLen] << "..." : str
    end

    def self.replacify str, replace, with
      str.gsub! replace, with
    end

    def self.tokenize str
      arr = str.split(' ')
    end

    def self.removify str, target
      str.split(' ').delete_if {|s| s == target}.join(' ')
    end
end
