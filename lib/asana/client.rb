module Asana
  require 'httparty'
  require 'ostruct'

  class Client
    include HTTParty

    @@token = nil

    def self.authenticate(token)
      @@token = token
      self.base_uri 'https://app.asana.com/api/1.0'
    end

    def self.get_data(uri, params)
      options = self.prepare_get_params(params)
      response = self.get(uri, options)
      response['data']
    end

    def self.post_data(uri, params)
      options = self.prepare_post_params(params)
      response = self.post(uri, options)
      response['data']
    end

    def self.put_data(uri, params)
      options = self.prepare_post_params(params)
      response = self.put(uri, options)
      response['data']
    end

    def self.delete_data(uri, params)
      options = self.prepare_post_params(params)
      response = self.delete(uri, options)
      response['data']
    end

    def self.refresh_token(params)
      options = self.prepare_post_params(params)
      response = self.post('https://app.asana.com/-/oauth_token', options)
      response.parsed_response
    end

    private

    def self.prepare_get_params(params)
      temphash = {}
      mappings = {fields: 'opt_fields', assignee: 'assignee'}
      temphash[:query] = Hash[params.map {|k,v| [mappings[k]|| k, v] }]
      temphash[:headers] = {'Authorization' => "Bearer #{@@token}"}
      temphash
    end

    def self.prepare_post_params(params)
      temphash = {}
      temphash[:body] = params
      temphash[:headers] = {'Authorization' => "Bearer #{@@token}"}
      temphash
    end
  end
end