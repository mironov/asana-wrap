module Asana
  class Workspace < Asana::Client
    def self.all(params = {})
      uri = "/workspaces"
      self.get_data(uri, params)
    end

    def self.id(params = {})
      uri = "/workspaces/#{params[:workspace]}"
      params.delete(:workspace)
      self.get_data(uri, params)
    end
  end
end
