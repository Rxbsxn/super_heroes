require 'json'
class ReadAndModify
  def read_from_file
    File.read('input.json')
  end

  def parse_to_hash
    JSON.parse(read_from_file)
  end

  def heroes
    heroes_each { |x|
      isBatman(x) ? batman(x) : not_batman(x)
    }
  end

  def heroes_each
      parse_to_hash.each do |hero|
        yield hero
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
