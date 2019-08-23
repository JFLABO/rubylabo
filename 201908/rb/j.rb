require 'json'
hash = { "Ocean" => { "Squid" => 10, "Octopus" =>8 },"mes"=>{"lucky"=>"Many people make money on this job.(C)JFLABO 2019-"}}
json_str = JSON.pretty_generate(hash)
puts json_str
