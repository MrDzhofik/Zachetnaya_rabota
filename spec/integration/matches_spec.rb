require 'selenium-webdriver'
require 'json'
describe 'Matches' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @driver.manage.window.maximize
  end
  after(:each) do
    sleep(1)
    @driver.quit
  end
  it 'show_all_matches' do
    @driver.get('localhost:3000/')
    @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    sleep(2)
    expect(@driver.find_element(:xpath, '//h1').text).to eq("Матчи")
  end

  it 'show match_stat' do
    @driver.get('localhost:3000/')
    @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    sleep(1)
    @driver.find_element(:xpath, "(//a[contains(text(),'Статистика')])[2]").click
    sleep(1)
    expect(@driver.find_element(:css, '.st_title').text).to eq("Статистика")
  end

  it 'show match_filters' do
    @driver.get('localhost:3000/')
    @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    sleep(1)
    @driver.find_element(:css, 'select:nth-child(1) > option:nth-child(2)').click
    sleep(1)
    @driver.find_element(:name, "commit").click
    sleep(1)
    expect(@driver.find_element(:xpath, '//h1[2]').text).to eq("Команда: Liverpool")
  end

  it 'show team' do
    @driver.get('localhost:3000/')
    @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
    @driver.find_element(:id, 'user_password').send_keys('123456')
    @driver.find_element(:name, 'commit').click
    sleep(1)
    @driver.find_element(:xpath, "(//a[contains(text(),'Статистика')])[2]").click
    sleep(1)
    @driver.find_element(:xpath, "//span/a[2]").click
    sleep(1)
    expect(@driver.find_element(:xpath, '//h1').text).to eq("Информация о команде")
  end

  # it 'show user profile' do
  #   @driver.get('localhost:3000/')
  #   @driver.find_element(:id, 'user_email').send_keys('milka@mail.ru')
  #   @driver.find_element(:id, 'user_password').send_keys('123456')
  #   @driver.find_element(:name, 'commit').click
  #   sleep(1)
  #   @driver.find_element(:css, ".image_inside_btn").click
  #   @driver.find_element(:xpath, "//a[contains(text(),'Профиль')]").click
  #   sleep(1)
  #   expect(@driver.find_element(:css, '.favsb').text).to eq('Любимый клуб:')
  # end
end