module Asana
  class Task < Asana::Client

    def self.all(params = {})
      uri = "/tasks"
      self.get_data(uri, params)
    end

    def self.create(params = {})
      uri = "/tasks"
      self.post_data(uri, params)
    end

    def self.id(params = {})
      uri = "/tasks/#{params[:task]}"
      params.delete(:task)
      self.get_data(uri, params)
    end

    def self.project_tasks(params = {})
      uri = "/projects/#{params[:project]}/tasks"
      params.delete(:project)
      self.get_data(uri, params)
    end

    def self.workspace_tasks(params = {})
      uri = "/workspaces/#{params[:workspace]}/tasks"
      params.delete(:workspace)
      self.get_data(uri, params)
    end
  end
end
