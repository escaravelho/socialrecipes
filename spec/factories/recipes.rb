FactoryGirl.define do
  factory :recipe do
    name 'Feijoada '
    kitchen
    type_of_food 'Prato Principal'
    preference 'Sem Glúten'
    amount 6
    preparation_time 60
    difficulty 'Médio'
    ingredients '1 Kg de feijão preto - 100 g de carne seca
                 70 g de orelha de porco - 70 g de rabo de porco
                 70 g de pé de porco - 100 g de costelinha de porco
                 50 g de lombo de porco - 100 g de paio
                 150 g de lingüiça portuguesa'
    steps 'Coloque as carnes de molho por 36 horas ou mais,
           vá trocando a água várias vezes, se ambiente estiver quente ou verão,
           coloque gelo por cima ou em camadas frias.
           Coloque para cozinhar passo a passo: as carnes duras, em seguida as
           carnes moles.
           Quando a carne dura estiver mole coloque o feijão,
           e retire as carnes. Finalmente tempere o feijão.'
    photo ''
  end
end
