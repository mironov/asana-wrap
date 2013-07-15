module Asana
  class Workspace < Asana::Client
    
      def self.all(params = {})
      uri = "/projects"
      self.format(uri, params)
    end

    def self.workspace(params = {})
      uri = "/workspaces/#{params[:task]}"
      self.format(uri, params)
    end
  end
end


    #show all workspaces available
