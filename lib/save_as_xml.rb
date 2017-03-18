require 'nokogiri'
class SaveAsXML < Struct.new(:input)

  def save_to_xml
    File.write('output.xml', to_xml)
  end

  private

  def build_xml
    Nokogiri::XML::Builder.new do |xml|
      xml.data do
        input.each do |obj|
          xml.hero do
            xml.first_name obj['first_name']
            xml.last_name obj['last_name']
            xml.nickname obj['nickname']
            xml.equipment do
              obj['equipment'].each { |x| xml.item x }
            end
          end
        end
      end
    end
  end

  def to_xml
    build_xml.doc.root.to_s
  end
end
