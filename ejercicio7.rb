class Punto
    attr_accessor :posicionx, :posiciony

    def initialize(x, y)
        @posicionx = x
        @posiciony = y
    end

end


10.times do 
   c = Punto.new(rand(0..100), rand(0..100))
   puts 'aqui comienza x'
   puts 'aqui comienza'
end