unless User.exists?(email: "admin@tickets.com")
  User.create!(email: "admin@tickets.com", password: "password", admin: true)
end
unless User.exists?(email: "viewer@ticket.com")
  User.create!(email: "viewer@ticket.com", password: "password")
end
["Sublime Text 3", "Internet Explorer"].each do |name|
  unless Project.exists?(name: name)
    Project.create!(name: name, description: "A sample project about #{name}")
  end
end