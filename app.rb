require( 'rubygems' )
require( 'sinatra' )
# require( 'sinatra/reloader' )
# require( 'pry-byebug' )

 # set :port, 4567


class App < Sinatra::Base

require_relative('./models/items.rb')
require_relative('./models/types.rb')
require_relative('./models/categories.rb')
require_relative('./models/character_classes.rb')
require_relative('./models/ctrel.rb')

require_relative('./controllers/shop_controller.rb')
require_relative('./controllers/type_controller.rb')
require_relative('./controllers/category_controller.rb')
require_relative('./controllers/cclasses_controller.rb')
require_relative('./controllers/ctrel_controller.rb')

# also_reload('./models/*')

end
