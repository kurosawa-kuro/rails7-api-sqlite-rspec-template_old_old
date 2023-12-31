# spec/support/response_helper.rb

module ResponseHelper
    def print_response_details
      puts ""
      puts "Status: #{response.status}"
      puts "Headers: #{response.headers.select { |k, v| ['Content-Type', 'X-Frame-Options'].include? k }}"
      puts "Request Params: #{response.request.params.inspect}"
      puts "Body: #{JSON.pretty_generate(JSON.parse(response.body))}"
    end
end
  