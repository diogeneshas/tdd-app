require 'rails_helper'

RSpec.feature "Customers", type: :feature do
  scenario 'Verifica Cadastro de Clientes' do
    visit(root_path)
    expect(page).to have_link('Cadastro de Cliente')
  end

  scenario 'Verifica Link de novo Cliente' do
    visit(root_path)
    click_on('Cadastro de Clientes')
    expect(page).to have_content('Listando Clientes')
    expect(page).to have_link('Novo Cliente')
  end

  scenario 'Verifica Formulario de novo Cliente' do
    visit(customers_path)
    click_on('Novo Cliente')
    expect(page).to have_content('Novo Cliente')
  end
end
