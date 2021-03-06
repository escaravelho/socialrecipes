require 'rails_helper'

feature 'User should create a kitchen' do
  scenario 'successfully' do
    visit new_kitchen_path

    fill_in 'Nome', with: 'Brasileira'

    click_on 'Cadastrar'

    expect(page).to have_content 'Brasileira'
  end

  scenario 'unsuccessfully' do
    visit new_kitchen_path

    click_on 'Cadastrar'

    expect(page).to have_content 'Insira o dado obrigatório!'
  end
end
