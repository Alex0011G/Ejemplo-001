require 'faker'

cantantes = []

100.times do
    cantante = {
        Nombre: Faker::Music.band,
        Domicilio: Faker::Address.full_address,
        Email: Faker::Internet.email
    }

    cantantes << cantante
end

cantantes.each_with_index do |cantante, index|
    puts"#{index + 1}. Nombre: #{cantante[:Nombre]}"
    puts "Domicilio: #{cantante[:Domicilio]}"
    puts "Email: #{cantante[:Email]}"
    puts "°--°--°--°--°--°--°--°--°--°--°"
end