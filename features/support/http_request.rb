class Http_Request
  attr_accessor :url

  def initialize(url, header)
    @url = url
    @header = header
  end

  def get(request_url)
    if request_url.empty?
      raise 'request_url is empty'
    end

    url = @url + request_url
    header = @header
    response = RestClient.get(url, header)
    @data = JSON.parse response.body
    return @data
  end

  # def post(request_url, pay_load)
  #   if request_url.empty? and pay_load.emtpy?
  #     raise 'request_url / payload is empty'
  #   end
  #
  #   url = @url + request_url
  #   header = @header
  #   response = RestClient.post(url, pay_load, header)
  #   @data = JSON.parse response.body
  #   binding.pry
  #   response.header
  #   return @data
  # end

  def post(request_url, pay_load)
    if request_url.empty? and pay_load.emtpy?
      raise 'request_url / payload is empty'
    end

    url = @url + request_url
    header = @header
    response = RestClient.post(url, pay_load, header)
    return response
  end

  def put(request_url, pay_load)
    if request_url.empty? and pay_load.emtpy?
      raise 'request_url / payload is empty'
    end

    url = @url + request_url
    response = RestClient.put(url, pay_load)
    return response
  end


  # def put(request_url, pay_load)
  #   if request_url.empty? and pay_load.emtpy?
  #     raise 'request_url / payload is empty'
  #   end
  #
  #   url = @url + request_url
  #   response = RestClient.put(url, pay_load)
  #   @data = JSON.parse response.body
  #   return @data
  # end

  def delete(request_url)
    if request_url.empty?
      raise 'request_url is empty'
    end

    url = @url + request_url
    header = @header
    response = RestClient.delete(url, header)
    return response.status
  end

end
