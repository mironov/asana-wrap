module Asana
  class Project < Asana::Client
      def self.all(params = {})
      uri = "/projects"
      self.format(uri, params)
      end

      def self.id(params ={})
        uri = "/projects/#{params[:project]}"
        params.delete(:project)
        self.format(uri, params)
      end
  end
end

