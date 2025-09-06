puts'-' * 60
puts'EXEMPLO DE SOBRESCRITA DE MÉTODO'.center(60)
puts'-' * 60

class Game
    def initialize
        puts "Novo objeto de jogo foi criado"
        # Variável de Instância
        @name = "Pes"
        @genre = "Esporte"
        @multiplayer = true
        @versions = [2018, 2019, 2020]
        @price = 100
    end

    def information
        puts "O jogo é do gênero #{@genre} e as versões: #{@versions}"
    end

    def techinal_sheet
        puts "##Dados do Jogo##"
        puts "Nome do Jogo: #{@name}"
        puts "Gênero do Jogo: #{@genre}"
        puts "Preço do Jogo: #{@price}"
    end

    def to_s
        "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
    end
end

game = Game.new
puts game

puts'-' *60