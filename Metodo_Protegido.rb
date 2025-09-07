puts'-' * 60
puts 'MÉTODO PROTEGIDO'.center(60)
puts'-' * 60

# Método protegido:
# Os métodos podem ser chamados a partir de instâncias da mesma classe onde foram definidos.
# Ou em suas subclasses.

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

    # Método Protegido

    protected

    def discounted_price(discount_percentage)
        @price -= (@price * (discount_percentage.to_f / 100))
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.techinal_sheet
game1.send(:discounted_price, 20)
puts game1.techinal_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [], 200)
puts game2
puts game2.techinal_sheet
game2.send(:discounted_price, 10)
puts game2.techinal_sheet

puts'-1 * 60