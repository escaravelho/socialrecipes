require 'rails_helper'

feature 'User should create type of food' do
  scenario 'successfully' do
    visit new_type_of_food_path

    fill_in 'Nome:', with: 'Prato Principal'

    click_on 'Cadastrar'

    expect(page).to have_content 'Prato Principal'
  end
  scenario 'unsuccessfully' do
    visit new_type_of_food_path

    click_on 'Cadastrar'

    expect(page).to have_content 'Insira o dado obrigatório!'
  end
end
