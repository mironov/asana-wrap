module Asana
  class Story < Asana::Client
    def self.task_stories(params = {})
      uri = "/tasks/#{params[:task]}/stories"
      self.get_data(uri, params)
    end

    def self.create(params ={})
      uri = "/tasks/#{params[:task]}/stories"
      params.delete(:project)
      self.post_data(uri, params)
    end
  end
end
