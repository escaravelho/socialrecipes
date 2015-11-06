require 'rails_helper'

feature 'User should view recipes' do
  scenario 'successfully' do
    recipe1 = create(:recipe)
    recipe2 = create(:recipe, name: 'Salada Grega')

    visit root_path

    expect(page).to have_content('Receitas')
    expect(page).to have_content(recipe1.name)
    expect(page).to have_content(recipe2.name)
  end
end
