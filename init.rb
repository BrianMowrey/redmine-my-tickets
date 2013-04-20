Redmine::Plugin.register :redmine_my_tickets do
  name 'Redmine My Tickets plugin'
  author 'Brian Mowrey'
  description 'This is a plugin for redmine that adds a "My Tickets" link in the main menu'
  version '0.0.1'
  url 'https://github.com/BrianMowrey/redmine-my-tickets'
  author_url 'https://github.com/BrianMowrey'

  menu :top_menu, :my_tickets, { :controller => 'issues', :assigned_to_id => 'me', :set_filter => 1 },{ :after => :my_page ,:if => Proc.new { User.current.logged? } }
  
end

#TODO


#add route
#add settings to not add welcome route
