module Asana
  class Story < Asana::Client
    def self.task_stories(params = {})
      uri = "/tasks/#{params[:task]}/stories"
      self.get(uri, params)
    end

    def self.create(params ={})
      uri = "/tasks/#{params[:task]}/stories"
      params.delete(:project)
      self.post(uri, params)
    end
  end
end
