require "stringer/version"

module Stringer
    def self.spacify *strings
        string = ''
        strings.each_with_index do |s, idx|
            string += s
            string += ' ' unless (idx + 1) == strings.length
        end
        return string
    end

    def self.minify(string, max)
        return string if string.length <= max
        return string[0...max] + "..."
    end

    def self.replace(string, to_replace, replace_with)
        split = string.split(' ')
        split.each_with_index do |word, idx|
            split[idx] = replace_with if word == to_replace
            split[idx] = (replace_with + word[word.length-1]) if word[0...word.length-1] == to_replace
        end
        return split.join(' ')
    end

    def self.tokenize(string)
        return string.split(' ')
    end

    def self.remove(string, to_remove)
        return string.split(' ').map! { |word| word unless word == to_remove }.join(' ').split(' ').join(' ')
    end
end
