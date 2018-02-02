class Punto
    attr_accessor :posicionx, :posiciony

    def initialize(x, y)
        @posicionx = x
        @posiciony = y
    end

end

puts 'aqui comienza x'
10.times do |i|
   c = Punto.new(rand(0..100), rand(0..100))
   puts "el punto #{i + 1} (#{c.posicionx}, #{c.posiciony})"
end