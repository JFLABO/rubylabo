require 'json'
hash = { "Ocean" => { "Squid" => 10, "Octopus" =>8 }}
json_str = JSON.pretty_generate(hash)
puts json_str
