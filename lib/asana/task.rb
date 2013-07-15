module Asana
  class Task < Asana::Client
    
    def self.all(params = {})
      uri = "/tasks"
      self.format(uri, params)
    end

    def self.id(params = {})
      uri = "/tasks/#{params[:task]}"
      params.delete(:task)
      self.format(uri, params)
    end

    def self.project_tasks(params = {})
      uri = "/projects/#{params[:project]}/tasks"
      params.delete(:project)
      self.format(uri, params)
    end

    def self.workspace_tasks(params = {})
      uri = "/workspaces/#{params[:workspace]}/tasks"
      params.delete(:workspace)
      self.format(uri, params)
    end
  end
end


    #show all workspaces available
