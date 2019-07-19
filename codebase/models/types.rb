class Type

attr_reader :id
attr_accessor :category, :usable_by

def initialize(options)
  @id = options['id'].to_i if options[:id]
  @category = options['category']
  @usable_by = options['usable_by']
end


end
