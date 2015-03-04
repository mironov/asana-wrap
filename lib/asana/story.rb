module Asana
  class Story < Asana::Client
    def task_stories(params = {})
      uri = "/tasks/#{params[:task]}/stories"
      get_data(uri, params)
    end

    def create(params ={})
      uri = "/tasks/#{params[:task]}/stories"
      params.delete(:project)
      post_data(uri, params)
    end
  end
end
