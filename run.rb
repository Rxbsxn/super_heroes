require_relative 'seed/input_data'
require_relative 'lib/save_as_json'
require_relative 'lib/read_and_modify'
require_relative 'lib/save_as_xml'

input_data = Input.data
SaveAsJson.new(input_data).save_json

hash_to_xml = ReadAndModify.new.heroes
SaveAsXML.new(hash_to_xml).save_xml
