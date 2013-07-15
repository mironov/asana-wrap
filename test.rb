require 'asana'

YOURTOKEN = '0/3c1c99e4551acf8060af7611a0c89371'

Asana::Client.authenticate(YOURTOKEN)


# get current user
c =  Asana::User.me
c.name

#get current user's email
params = {
	fields: 'email'
}
puts Asana::User.me(params)

#get current user's id
params = {
	fields: 'id'
}
puts Asana::User.me(params)

#get all workspaces
puts Asana::Workspace.all

#get all of my tasks in the first workspace
#Asana::Workspace.all