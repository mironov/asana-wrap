module Asana
  require 'httparty'
  require 'ostruct'

  class Client
    include HTTParty
    attr_accessor :token

    def authenticate(token)
      @token = token
      self.base_uri 'https://app.asana.com/api/1.0'
      self.headers 'Authorization' => "Bearer #{@token}"
    end

    def get_data(uri, params)
      options = prepare_get_params(params)
      response = self.get(uri, options)
      response['data']
    end

    def post_data(uri, params)
      options = prepare_post_params(params)
      response = self.class.post(uri, options)
      response['data']
    end

    def put_data(uri, params)
      options = prepare_post_params(params)
      response = self.class.put(uri, options)
      response['data']
    end

    private

    def prepare_get_params(params)
      temphash = {}
      mappings = {fields: 'opt_fields', assignee: 'assignee'}
      temphash[:query] = Hash[params.map {|k,v| [mappings[k]|| k, v] }]
      temphash
    end

    def prepare_post_params(params)
      temphash = {}
      temphash[:body] = params
      temphash
    end
  end
end