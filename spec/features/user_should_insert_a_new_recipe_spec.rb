require 'rails_helper'

feature 'User should insert a new recipe' do
  scenario 'successfully' do
    kitchen = create(:kitchen)
    type_of_food = create(:type_of_food)

    visit new_recipe_path

    fill_in 'Nome da Receita', with: 'Feijoada'
    select(kitchen.name, from: 'Cozinha:')
    select(type_of_food.name, from: 'Tipo de Comida:')
    fill_in 'Preferência de Comida', with: 'Vegetariana'
    fill_in 'Serve', with: '5'
    fill_in 'Nível de Dificuldade', with: 'Médio'
    fill_in 'Tempo de Preparo', with: '120'
    fill_in 'Ingredientes', with: '1 KG de feijão preto'
    fill_in 'Passo-a-Passo', with: 'Cozinhar 1 KG de feijão preto'
    attach_file 'Foto', 'spec/photos/feijoada.jpg'

    click_on 'Cadastrar'

    expect(page).to have_content 'Feijoada'
    expect(page).to have_content kitchen.name
    expect(page).to have_content type_of_food.name
    expect(page).to have_content 'Vegetariana'
    expect(page).to have_content '5'
    expect(page).to have_content '120'
    expect(page).to have_content 'Médio'
    expect(page).to have_content '1 KG de feijão preto'
    expect(page).to have_content 'Cozinhar 1 KG de feijão preto'
    expect(page).to have_xpath("//img[contains(@src, 'feijoada.jpg')]")
  end

  scenario 'unsuccessfully' do
    visit new_recipe_path

    click_on 'Cadastrar'

    expect(page).to have_content 'Insira os dados obrigatórios'
  end
end
