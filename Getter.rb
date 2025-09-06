puts'-' * 60
puts'Retornando valores de variáveis de instância utilizando método getter.'.center(60)
puts'-' * 60

class Game
    puts "Novo objeto de jogo foi criado #{self}"
    def initialize
        # Variável de Instância
        @name = "Pes"
        @genre = "Esporte"
        @multiplayer = true
        @versions = [2018, 2019, 2020]
        @price = 100
    end

    def to_s
        "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
    end

    def name 
        @name
    end

    def genre
        @genre
    end

    def multiplayer
        @multiplayer
    end
end

game = Game.new
puts game.genre, game.multiplayer, game.name
