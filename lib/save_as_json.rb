require 'json'

class SaveAsJson < Struct.new(:hash, :json_output)
  
  def save_json
    File.write(json_output, hash_to_json)
  end

  private
  
  def hash_to_json
    hash.to_json
  end
end
