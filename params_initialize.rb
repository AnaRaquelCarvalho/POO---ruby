puts'-' * 60
puts' Parâmetros de Inicialização (Initialize)'.center(60)
puts'-' * 60

class Game
    attr_accessor :name, :genre, :price # Leitura e Escrita
    attr_reader :multiplayer, :versions

    def initialize(name, genre, multiplayer, versions, price)
        # Variável de Instância
        @name = name
        @genre = genre
        @multiplayer = multiplayer
        @versions = versions
        @price = price
    end
    
    def to_s
        "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
    end

    def techinal_sheet
        puts "##Dados do Jogo##"
        puts "Nome do Jogo: #{@name}"
        puts "Gênero do Jogo: #{@genre}"
        puts "Preço do Jogo: #{@price}"
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.techinal_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [], 200)
puts game2
puts game2.techinal_sheet

game3 = Game.new("A Way Out", "Ação", false, [], 30)
puts game3
puts game3.techinal_sheet

puts'-' * 60