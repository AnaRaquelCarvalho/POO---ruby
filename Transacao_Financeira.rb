puts'-' * 60
puts'MAPEAMENTO DE TRANSAÇÃO FINANCEIRA'.center(60)
puts'-' * 60

# Defina uma classe FinancialTransaction com as caracterícas abaixo:
# A instanciação deve definir 4 variáveis de instância:
# 1- @to
# 2- @from
# 3- @amount
# 4- @completed
# Defina métodos getter para @to, @from e @amount
# Defina métodos getter + setter para @completed
# Obs: Utilizar o attr.

class FinancialTransaction
    attr_reader :to, :from, :amount
    attr_accessor :completed

    def initialize(to, from, amount, completed)
        @to = to
        @from = from
        @amount = amount 
        @completed = completed
    end
end

trans1 = FinancialTransaction.new("Fulano", "Sicrano", 1000, false)
p trans1.to
p trans1.from
p trans1.amount
p trans1.completed
trans1.completed = true
p trans1.completed

puts'-' * 60