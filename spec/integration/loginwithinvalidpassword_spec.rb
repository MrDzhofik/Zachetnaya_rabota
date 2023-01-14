# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Registrations' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @driver.manage.window.maximize
  end
  after(:each) do
    sleep(2)
    @driver.quit
  end
  it 'visit root_path before authorizing' do
    sleep(1)
    @driver.get('localhost:3000/')
    expect(@driver.find_element(:css, '.alert').text).to eq("translation missing: ru.devise.failure.user.unauthenticated")
  end

  it 'reg with incorrect passwords' do
    @driver.get('localhost:3000/ru')
    @driver.find_element(:css, ".sign_in").click
    sleep(1)
    @driver.find_element(:id, 'user_email').send_keys('gav@example.com')
    @driver.find_element(:id, 'user_password').send_keys('897654')
    @driver.find_element(:id, 'user_password_confirmation').send_keys('8976547')
    @driver.find_element(:name, 'commit').click
        expect(@driver.find_element(:xpath, '//li').text).to eq("Password confirmation не совпадает со значением поля Password")
  end

  it 'reg with taken email' do
    @driver.get('localhost:3000/ru')
    @driver.find_element(:css, '.sign_in').click
    sleep(1)
    @driver.find_element(:id, 'user_email').send_keys('gav2@example.com')
    @driver.find_element(:id, 'user_password').send_keys('8976')
    @driver.find_element(:id, 'user_password_confirmation').send_keys('8976')
    @driver.find_element(:name, 'commit').click
    expect(@driver.find_element(:xpath, '//li').text).to eq("Email уже существует")
  end

  it 'reg succesfull' do
    @driver.get('localhost:3000/ru')
    @driver.find_element(:css, '.sign_in').click
    sleep(1)
    @driver.find_element(:id, 'user_email').send_keys('gav100@example.com')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:id, 'user_password_confirmation').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    sleep(4)
    expect(@driver.find_element(:css, 'h1').text).to eq("Матчи")
  end
end
