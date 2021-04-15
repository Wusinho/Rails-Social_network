RSpec.describe 'create new user', type: :feature do
  before :each do
    @user = User.create(username: 'axel', email: 'axel@mail.com', password: '123456')
  end
  scenario 'Create new user with valid user and valid inputs' do
    visit new_user_registration_path
    fill_in 'username', with: 'Yandel'
    fill_in 'Email', with: 'Yandel@email.com'
    fill_in("Password", with: '123456', :match => :prefer_exact)
    fill_in("Password confirmation", with: '123456', :match => :prefer_exact)
    click_on 'Sign up'
  end

  
end
