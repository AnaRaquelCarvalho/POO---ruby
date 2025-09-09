puts '-' * 60
puts 'Sistema para Gerenciamento de Veículos em um estacionamento'.center(60)
puts '-' * 60

# Há dois tipos de veículos que precisam ser tratados: carros e motos.
# Ambos têm algumas informações em comum, como placa e marca, mas também têm
# informações exclusivas, como a quantidade de portas para carros e a cilindrada para motos.

# 1-Crie uma classe base chamada Veiculo com os atributos comuns: placa e marca.
# Ela deve ter um método chamado detalhes que exibe a placa e a marca do veículo.

# 2- Crie duas subclasses, Carro e Moto, que herdam de Veiculo.
# A classe Carro deve ter um atributo adicional chamado portas, e a classe Moto deve
# ter um atributo adicional chamado cilindrada. Cada uma dessas subclasses deve
# sobrescrever o método detalhes para incluir os atributos exclusivos.

# 3-Crie uma função chamada exibir_detalhes que aceita um objeto de qualquer
# uma das classes (Carro ou Moto) e chama o método detalhes sobre ele.
# Use o polimorfismo para permitir que a função funcione de maneira uniforme com ambos
# os tipos de veículos.

class Veiculo
    attr_accessor :placa, :marca

    def initialize(placa, marca)
        @placa = placa
        @marca = marca
    end

    def detalhes
        puts "Placa: #{@placa}"
        puts "Marca: #{@marca}"
    end
end   

class Carro < Veiculo
    attr_accessor :portas

    def initialize(placa, marca, portas)
        super(placa, marca)
        @portas = portas
    end

    def detalhes
        super
        puts "Número de Portas: #{@portas}"
    end
end
class Moto < Veiculo
    attr_accessor :cilindrada

    def initialize(placa, marca, cilindrada)
        super(placa, marca)
        @cilindrada = cilindrada
    end

    def detalhes
        super
        puts "Cilindrada: #{@cilindrada}"
    end
end

def exibir_detalhes(veiculo)
    puts veiculo.detalhes
end

carro = Carro.new("ABC123", "Toyota", 4)
moto = Moto.new("XYZ123", "Honda", 250)

exibir_detalhes(carro)
exibir_detalhes(moto)

puts '-' * 60