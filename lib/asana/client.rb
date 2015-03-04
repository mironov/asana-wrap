module Asana
  require 'httparty'
  require 'ostruct'

  class Client
    include HTTParty
    attr_accessor :token

    def self.authenticate(token)
      @token = token
      self.base_uri 'https://app.asana.com/api/1.0'
      self.headers 'Authorization' => "Bearer #{@token}"
    end

    def self.get(uri, params)
      options = self.prepare_get_params(params)
      response = self.get(uri, options)
      response['data']
    end

    def self.post(uri, params)
      options = self.prepare_post_params(params)
      response = self.post(uri, options)
      response['data']
    end

    private

    def self.prepare_get_params(params)
      temphash = {}
      mappings = {fields: 'opt_fields', assignee: 'assignee'}
      temphash[:query] = Hash[params.map {|k,v| [mappings[k]|| k, v] }]
      temphash
    end

    def self.prepare_post_params(params)
      temphash[:body] = params
      temphash
    end
  end
end