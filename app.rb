require( 'rubygems' )
require( 'sinatra' )
# require( 'sinatra/reloader' )
# require( 'pry-byebug' )

 # set :port, 4567


class App < Sinatra::Base

require_relative('./codebase/models/items.rb')
require_relative('./codebase/models/types.rb')
require_relative('./codebase/models/categories.rb')
require_relative('./codebase/models/character_classes.rb')
require_relative('./codebase/models/ctrel.rb')

require_relative('./codebase/controllers/shop_controller.rb')
require_relative('./codebase/controllers/type_controller.rb')
require_relative('./codebase/controllers/category_controller.rb')
require_relative('./codebase/controllers/cclasses_controller.rb')
require_relative('./codebase/controllers/ctrel_controller.rb')

# also_reload('./codebase/models/*')

end
