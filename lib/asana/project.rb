module Asana
  class Project < Asana::Client
    def all(params = {})
      uri = "/projects"
      get_data(uri, params)
    end

    def id(params ={})
      uri = "/projects/#{params[:project]}"
      params.delete(:project)
      get_data(uri, params)
    end
  end
end
