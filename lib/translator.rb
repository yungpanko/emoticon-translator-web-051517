# require modules here
require 'yaml'

def load_library(file)
  # code goes here
  load_hash = YAML.load_file(file)
  hash = {}
  hash["get_emoticon"] = {}
  hash["get_meaning"] = {}
  load_hash.each do |key, symbols|
    hash["get_meaning"][symbols[1]] = key
    hash["get_emoticon"][symbols[0]] = symbols[1]
  end
hash
end

def get_japanese_emoticon(file, emoticon)
  hash = load_library(file)
  if hash["get_emoticon"].keys.include?(emoticon)
    hash["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  # code goes here
end

def get_english_meaning(file, emoticon)
  hash = load_library(file)
  if hash["get_meaning"].keys.include?(emoticon)
    hash["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  # code goes here
end
