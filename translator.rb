require_relative 'api_resource'
require_relative 'file_resource'

class Translator
  include ApiResource
  include FileResource

  def self.translate(text, lang_from, lang_to)
    data = {
      q: text,
		  source: lang_from,
		  target: lang_to
    }

    translated_text = ApiResource.send(data)
    FileResource.write(translated_text)
  end
end
