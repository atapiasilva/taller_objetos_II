#Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:
#propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
#Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método
#llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"


class Dog
    attr_accessor :nombre, :raza, :color
    
    def initialize(propiedades)
        @nombre = propiedades[:nombre]
        @raza = propiedades[:raza]
        @color = propiedades[:color]
    end

    def ladrar
        puts "#{@nombre} está ladrando"
    end

end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
puts "El nombre del perro es #{perro.nombre} , su raza es #{perro.raza} y su color es #{perro.color}"

perro.ladrar