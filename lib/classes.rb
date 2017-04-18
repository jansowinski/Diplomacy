# todo: add supply centers, resolve problems with Spain xD
class Country
  
  attr_reader :id, :name, :type, :neighbours
  attr_accessor :army_type, :belongs_to
  
  def initialize (id, name, type, neighbours, army_type, belongs_to)
    if id.class  == Symbol and id.length == 3
      @id = id.to_sym
    else
      raise(ArgumentError)
    end
    if name.class == String and name.length > 0
      @name = name
    else
      raise(ArgumentError)
    end
    if type == :land or type == :water or type == :land_with_water
      @type = type
    else
      raise(ArgumentError)
    end
    if neighbours.class == Array and neighbours.size > 0
      neighbours.each do |neighbour|
        if neighbour.class != Symbol or neighbour.size != 3
          raise (ArgumentError) 
        end
      end
      @neighbours = neighbours
    else
      raise(ArgumentError)
    end
    if army_type == :army or army_type == :fleet or army_type == nil
      @army_type = army_type
    else
      raise(ArgumentError)
    end
    if [:germany, :russia, :austria, :turkey, :england, :france, :italy, nil].include?(belongs_to) == true
      @belongs_to = belongs_to
    else
      raise(ArgumentError)
    end
  end

end

