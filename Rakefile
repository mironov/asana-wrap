require 'bundler/gem_tasks'
require 'rubygems'
require 'rake'
require './lib/asana'
require './lib/asana/client'
require './lib/asana/user'
require './lib/asana/workspace'
require './lib/asana/project'
require './lib/asana/task'

#token is for colin's klarna account - temporary token
token = '0/3c1c99e4551acf8060af7611a0c89371'

namespace :asana do 
  desc 'all tasks'
  task :do_all do
    puts 'get_user'
    Rake::Task['asana:get_user'].invoke
    puts 'get_users'
    Rake::Task['asana:get_users'].invoke
    puts 'get_user_by'
    Rake::Task['asana:get_user_by_id'].invoke
    puts 'get_workspaces'
    Rake::Task['asana:get_workspaces'].invoke
    puts 'workspace_by'
    Rake::Task['asana:get_workspace_by'].invoke
    puts 'get_projects'
    Rake::Task['asana:get_projects'].invoke
    puts 'get_tasks'
    Rake::Task['asana:get_tasks'].invoke
    puts 'get_task_by_id'
    Rake::Task['asana:get_task_by'].invoke
    puts 'get_tasks_by_project'
    Rake::Task['asana:get_tasks_by_project'].invoke
    puts 'get_tasks_by_workspace'
    Rake::Task['asana:get_tasks_in_workspace'].invoke
    puts 'get_project_by'
    Rake::Task['asana:get_project_by'].invoke
  end

  desc 'get the current user'
  task :get_user do
        params = {
    }
    Asana::Client.authenticate(token)
    @user = Asana::User.me(params)
    puts @user.name
  end

  desc 'get all users'
  task :get_users do
    params = {
      fields: 'email'
    }
    Asana::Client.authenticate(token)
    Asana::User.all(params)
  end

  desc 'get user by id'
  task :get_user_by_id do
    Asana::Client.authenticate(token)
    params = {
      user: '1266608946889'
    }
    Asana::User.get_by_id(params)
  end

  desc 'get users by workspace'
  task :get_users_by_workspace do
    Asana::Client.authenticate(token)
    params = {
      workspace: '451824357556',
    }
    Asana::User.by_workspace(params)
  end

  desc 'get all workspaces'
  task :get_workspaces do 
    params = {}
    Asana::Client.authenticate(token)
    Asana::Workspace.all(params)
  end

  desc 'get workspace by id'
  task :get_workspace_by do
    
    params ={
      workspace: '451824357556'
    }
    Asana::Client.authenticate(token)
    Asana::Workspace.workspace(params)
  end

  desc 'get all projects'
  task :get_projects do 
    params = {}
    Asana::Client.authenticate(token)
    Asana::Project.all(params)
  end

  desc 'get project by id'
  task :get_project_by do 
    params = {
      project: '1636943013621'
    }
    Asana::Client.authenticate(token)
    Asana::Project.id(params)
  end

  desc 'get tasks'
  task :get_tasks do
    params = {
     project: '1636943013621'
    }
    Asana::Client.authenticate(token)
    Asana::Task.all(params)
  end

  desc 'get task by id'
  task :get_task_by do
    params = {
      task: '1636943013660',
      fields: 'completed'
    }
    Asana::Client.authenticate(token)
    Asana::Task.id(params)
  end

  desc 'get tasks by project'
  task :get_tasks_by_project do
    params = {
      project: '1636943013621'
    }
    Asana::Client.authenticate(token)
    Asana::Task.project_tasks(params)
  end

   desc 'get tasks in workspace'
  task :get_tasks_in_workspace do
    params = {
      assignee: "me",
      workspace: '451824357556'
    }
    Asana::Client.authenticate(token)
    Asana::Task.workspace_tasks(params)
  end
end





