require 'selenium-webdriver'
require 'json'
describe 'Matches' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    sleep(1)
    @driver.quit
  end
  it 'show_all_matches' do
    @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    expect(@driver.find_element(:xpath, '//h1').text).to eq("Матчи")
  end

  it 'show match_stat' do
    @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, 'stat_button').click
    expect(@driver.find_element(:css, '.st_title').text).to eq("Статистика")
  end

  it 'show match_filters' do
    @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, 'stat_button').click
    expect(@driver.find_element(:css, '.st_title').text).to eq("Статистика")
  end

  it 'show team' do
  end

  it 'show user profile' do
  end