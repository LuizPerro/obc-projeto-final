require 'rest-client'
require 'json'

module ApiResource
  URL = 'https://translate.argosopentech.com/translate'

  def ApiResource.send(data)
    begin
      hedears = {content_type: :json}
      response = RestClient.post URL, data.to_json, hedears
      response = JSON.parse(response)
      response['translatedText']
    rescue => e
      "Não foi possivel realizar a requisição: #{e}"
    end
  end
end
