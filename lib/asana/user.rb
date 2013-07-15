module Asana
  class User < Asana::Client
    
    def self.me(params = {})
      uri = "/users/me"
      self.format(uri, params)
    end

    def self.get_by_id(params = {})
      uri = "/users/#{params[:user]}"
      params.delete(:user)
      self.format(uri, params)
    end

    def self.all(params = {})
      options = {}
      options = self.prefix_engine(params)
      uri = "/users"
      self.format(uri, params)
    end

        def self.by_workspace(params ={})
      uri = "/workspaces/#{params[:workspace]}/users"
      self.format(uri, params)
    end
  end
end


