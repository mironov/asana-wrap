module Asana
  class User < Asana::Client

    def me(params = {})
      uri = "/users/me"
      get_data(uri, params)
    end

    def get_by_id(params = {})
      uri = "/users/#{params[:user]}"
      params.delete(:user)
      get_data(uri, params)
    end

    def all(params = {})
      uri = "/users"
      get_data(uri, params)
    end

    def by_workspace(params ={})
      uri = "/workspaces/#{params[:workspace]}/users"
      get_data(uri, params)
    end
  end
end
