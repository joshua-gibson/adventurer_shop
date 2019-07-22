require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry-byebug' )

require_relative('./models/items.rb')
require_relative('./models/types.rb')
require_relative('./models/categories.rb')

require_relative('./shop_controller.rb')
require_relative('./type_controller.rb')
require_relative('./category_controller.rb')

also_reload('./models/*')
