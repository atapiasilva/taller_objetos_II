# Vamos a generar una mascota virtual y interactuaremos con ella.
# Crea una clase llamada MyPet, La cual, al inicializarse genere una mascota con los siguientes
# parametros:

# Genera el método comer considerando que llenara su panza y pasara el tiempo.
# Genera el método dormir considerando que pasara el tiempo y vaciara su panza.
# Generar un menu para interactuar con tu mascota(alimentarlo, hacerlo dormir, salir a caminar) 
# debes # poder iterar las opciones, hasta que, 
# Si la mascota muere de hambre debe terminar el programa


class MyPet


    def initialize name
        @name = name
        @sleep = false
        @satisfied = 10 #está lleno
        @fullintestine = 0 #No necesita ir @fullintestine debe ir al baño
        puts 'Bienvenido ' + @name + ' has nacido'
    end

    def caminar 
        puts "#{@name} está caminando"
        @satisfied -= 2
        @fullintestine += 2
        timelapse
    end

    def baño
        puts "#{@name} está en el baño"
        @fullintestine = 0
        timelapse
    end

    def comer
        puts "#{@name} está comiendo"
         @satisfied = 10
         timelapse
    end

    #generar el metodo dormir considerando que pasará el tiempo y vaciará su panza
    def dormir
        puts "#{@name} está durmiendo"
        @sleep = true
        @satisfied -= 2
        @fullintestine += 2
        timelapse
    end

    def hungry?
        @satisfied <= 2
    end
       
    def needToGo?
        @fullintestine == 10
    end
    
    def timelapse
        if @satisfied > 0 
            #Mueve el alimento del vientre al intestino
            @satisfied = @satisfied   -1
            @fullintestine = @fullintestine +1
        else
            #nuestro gato está hambriento
            if @sleep 
                @sleep = false 
                puts ' Se despierta derepente '
            end 
        puts '¡' + @name + ' está hambriento !  En su desesperación , ¡Murio de hambre!'
            exit #sale del programa
        end
 
        if hungry?
            if @sleep
                @sleep = false
                puts ' Se despierta de repente!'
            end
            puts 'El estomado de ' + @name + 'retumba..'
        end

        if needToGo?
            if @sleep == false
                puts 'Se despierta de repente!'
            end
            puts @name + ' hace la danza del baño...'
        end
    end


end  # se cierra la clase


def menu
    puts 'Este es el menú de tu Mascota'
    puts ''
    puts '1. Alimentar a la mascota'
    puts '2. Hacer dormir a la mascota'
    puts '3. La mascota sale a caminar '
    puts '4. La mascota va al baño'
    puts ''
    puts 'Ingrese una opción'
    menu = gets.chomp.to_i
end

mascota = MyPet.new('Chocolate')

continuar = true
while continuar
    case menu
    when 1
            puts ' Alimentando a la mascota '
            mascota.comer
    when 2 
            puts ' Haciendo dormir a la mascota '
            mascota.dormir
    when 3
            puts ' Haciendo caminar a la mascota '
            mascota.caminar
    when 4 
            puts  ' Haciendo ir al baño a la mascota '
            mascota.baño
    else
            puts 'Opción invalida intente nuevamente'
    end 
end
