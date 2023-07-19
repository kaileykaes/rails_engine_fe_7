class MerchantService
  class << self
    def call(path)
      response = conn.get(path)
      parse_data(response)
    end

    private
    def conn
      Faraday.new('http://[::1]:4000')
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end