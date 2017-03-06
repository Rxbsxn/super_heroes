require 'json'
class ReadAndModify
  def read_from_file
    File.read('input.json')
  end

  def parse_to_hash
    JSON.parse(read_from_file)
  end

  def heroes
    parse_to_hash.each do |hero|
      if isBatman(hero)
        batman(hero)
      else not_batman(hero)
      end
    end
  end

  def isBatman(hero)
    hero["nickname"] == "Batman"
  end


  def batman(param)
    param['equipment'] = ['Batrang', 'Grapling Hook', 'Batmobile', 'Utility belt']
  end

  def not_batman(param)
    param['equipment'] = ['Ring of Will', 'Lantern']
  end
end
