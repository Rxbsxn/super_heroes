require 'json'

class SaveAsJson < Struct.new(:hash)
  def hash_to_json
    hash.to_json
  end

  def save_json
    File.write('input.json', hash_to_json)
  end
end
