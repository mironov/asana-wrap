module Asana
  class Workspace < Asana::Client
    def all(params = {})
      uri = "/workspaces"
      get_data(uri, params)
    end

    def id(params = {})
      uri = "/workspaces/#{params[:workspace]}"
      params.delete(:workspace)
      get_data(uri, params)
    end
  end
end
