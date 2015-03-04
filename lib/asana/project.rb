module Asana
  class Project < Asana::Client
    def self.all(params = {})
      uri = "/projects"
      self.get(uri, params)
    end

    def self.id(params ={})
      uri = "/projects/#{params[:project]}"
      params.delete(:project)
      self.get(uri, params)
    end
  end
end
