require_relative 'seed/input_data'
require_relative 'lib/save_as_json'
require_relative 'lib/read_and_modify'
require_relative 'lib/save_as_xml'

set_input = 'input.json'

input_data = Input.data
SaveAsJson.new(input_data, set_input).save_json

hash_to_xml = ReadAndModify.new(set_input).heroes_with_gadgets
SaveAsXML.new(hash_to_xml).save_to_xml
