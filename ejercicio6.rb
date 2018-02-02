class Student
    attr_accessor :name, :nota
    def initialize(name, nota)
        @name = name
        @nota = nota
    end
end

nombres = ['Alicia', 'Javier', 'Camila', 'Francisco', 'Pablo', 'Josefina']
arreglo = []


nombres.each_with_index do |name, nota|
    arreglo << Student.new(name, nota+1)
end

arreglo.each do |e|
    puts e.name, e.nota
end