module Asana
  class Task < Asana::Client

    def all(params = {})
      uri = "/tasks"
      get_data(uri, params)
    end

    def create(params = {})
      uri = "/tasks"
      post_data(uri, params)
    end

    def id(params = {})
      uri = "/tasks/#{params[:task]}"
      params.delete(:task)
      get_data(uri, params)
    end

    def update(params = {})
      uri = "/tasks/#{params[:task]}"
      params.delete(:task)
      put_data(uri, params)
    end

    def destroy(params = {})
      uri = "/tasks/#{params[:task]}"
      params.delete(:task)
      delete(uri)
    end

    def project_tasks(params = {})
      uri = "/projects/#{params[:project]}/tasks"
      params.delete(:project)
      get_data(uri, params)
    end

    def workspace_tasks(params = {})
      uri = "/workspaces/#{params[:workspace]}/tasks"
      params.delete(:workspace)
      get_data(uri, params)
    end
  end
end
