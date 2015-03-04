module Asana
  class User < Asana::Client

    def self.me(params = {})
      uri = "/users/me"
      self.get_data(uri, params)
    end

    def self.get_by_id(params = {})
      uri = "/users/#{params[:user]}"
      params.delete(:user)
      self.get_data(uri, params)
    end

    def self.all(params = {})
      uri = "/users"
      self.get_data(uri, params)
    end

    def self.by_workspace(params ={})
      uri = "/workspaces/#{params[:workspace]}/users"
      self.get_data(uri, params)
    end
  end
end
