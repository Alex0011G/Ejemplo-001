class ContadorPalabras
    attr_accessor :texto
  
    # Inicializar la variable de texto
    def initialize(texto)
      @texto = texto
    end
  
    # Método para contar las palabras repetidas
    def contar_palabras
      palabras = @texto.downcase.gsub(/[^a-z\s]/, '').split
      conteo_palabras = Hash.new(0)
  
      # Iterar sobre las palabras y contarlas
      palabras.each do |palabra|
        conteo_palabras[palabra] += 1
      end
  
      conteo_palabras
    end
  
    # Método para imprimir las palabras y su conteo
    def imprimir_conteo
      conteo = contar_palabras
  
      # Usamos el iterador each para recorrer el hash
      conteo.each do |palabra, cantidad|
        puts "#{palabra}: #{cantidad}"
      end
    end
  end
  
  # Ejemplo de uso
  contador = ContadorPalabras.new("Este es un ejemplo. Este es otro ejemplo, ejemplo ejemplo.")
  contador.imprimir_conteo
   