require 'json'
class ReadAndModify < Struct.new(:input_json)
  
  def heroes_with_gadgets
    json_to_hash.each do |hero|
      hero['equipment'] = gadgets[hero['nickname']]
      end
  end

  private
  
  def read_from_file
    File.read(input_json)
  end

  def json_to_hash
    JSON.parse(read_from_file)
  end

  def gadgets
    {
      "Batman" => ['Batrang', 'Grapling Hook', 'Batmobile', 'Utility belt'],
      "Green Lantern" => ['Ring of Will', 'Lantern']
    }
  end
end
