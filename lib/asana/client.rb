module Asana
  require 'httparty'
  class Client
      include HTTParty
      attr_accessor :token

      def self.authenticate(token)
        @token = token
        self.base_uri 'https://app.asana.com/api/1.0'
        self.headers 'Authorization' => "Bearer #{@token}"
      end

      def self.format(uri, params)
        options = {}
        options = self.prefix_engine(params)
        self.getresponse(uri, options)
      end

  private
      def self.prefix_engine(params)
        temphash = {}
        mappings = {fields: 'opt_fields', assignee: 'assignee'}
        temphash[:query] = Hash[params.map {|k,v| [mappings[k]|| k, v] }]
        temphash
      end

      def self.getresponse(uri, options)
        response = self.get(uri, options)
        response
    end
  end
end