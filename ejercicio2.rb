class Car
    attr_accessor :model, :year
    def initialize(model, year)
        @model = model
        @year = year
    end
end
   

auto = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{auto.model} del año #{auto.year} !"