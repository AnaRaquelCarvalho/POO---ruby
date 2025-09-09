puts'-' * 60
puts ' UTILIZANDO POLIMORFISMO (MÚLTIPLAS FORMAS) '.center(60)
puts'-' * 60

# Polimorfismo -> Múltiplas Formas

# Classe base Game (Jogo)
class Game
    attr_accessor :name, :genre, :price     # Cria getters e setters
    attr_reader :multiplayer, :versions     # Cria apenas getters (leitura)

    # Construtor da classe Game
    def initialize(name, genre, multiplayer, versions, price)
        @name = name
        @genre = genre
        @multiplayer = multiplayer
        @versions = versions
        @price = price
    end
    
    # Método para retornar o objeto em formato string
    def to_s
        "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
    end

    # Método para exibir a ficha técnica do jogo
    def techinal_sheet
        puts "##Dados do Jogo##"
        puts "Nome do Jogo: #{@name}"
        puts "Gênero do Jogo: #{@genre}"
        puts "Preço do Jogo: #{@price}"
    end
end

# Classe derivada de Game -> Jogo que pode ser baixado
class DownloadableGame < Game
    attr_accessor :download_size

    # Construtor da classe DownloadableGame
    def initialize(name, genre, multiplayer, versions, price, download_size)
        # Chama o construtor da classe pai (Game)
        super(name, genre, multiplayer, versions, price)
        # Adiciona atributo específico da classe DownloadableGame
        @download_size = download_size
    end

    # Sobrescreve o método da classe pai (polimorfismo)
    def techinal_sheet
        # Chama o método da classe pai
        super
        # Adiciona mais informações específicas
        puts "Tamanho do Download: #{@download_size} GB"
    end
end

# Cria uma instância da classe Game
game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1              # Chama o método to_s
puts game1.techinal_sheet  # Exibe a ficha técnica

# Cria uma instância da classe DownloadableGame
game2 = DownloadableGame.new("Call of Duty", "Ação", true, ["Black Ops"], 100, 60)
puts game2              # Chama o método to_s
puts game2.techinal_sheet  # Exibe a ficha técnica (incluindo o tamanho do download)

puts'-' * 60