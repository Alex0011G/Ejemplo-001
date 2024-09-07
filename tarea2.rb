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

    palabras.each do |palabra|
      conteo_palabras[palabra] += 1
    end

    conteo_palabras
  end

  # Método para imprimir las palabras y su conteo
  def imprimir_conteo
    conteo = contar_palabras
    conteo.each do |palabra, cantidad|
      puts "#{palabra}: #{cantidad}"
    end
  end

  # Método para actualizar la variable de instancia @texto
  def actualizar_texto(nuevo_texto)
    @texto = nuevo_texto
  end

  # Método que muestra el texto utilizando to_s
  def mostrar_texto
    puts "El texto actual es: #{texto}"
  end

  # Sobrescribir el método to_s para devolver el nombre del objeto
  def to_s
    "El objeto es de clase #{self.class} y tiene el id: #{self.object_id}"
  end
end

# Ejemplo de uso
contador = ContadorPalabras.new("Este es un ejemplo.")
puts contador  # Esto imprimirá el nombre del objeto con su clase y object_id
contador.imprimir_conteo

# Actualizando el texto
puts "\nActualizando el texto...\n"
contador.actualizar_texto("Nuevo texto para mostrar.")
contador.imprimir_conteo
puts contador  # Imprime nuevamente el nombre del objeto
