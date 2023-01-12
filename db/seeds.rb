# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


# Creating Teams
# teams = []
# coaches = ['Sir Alex Ferguson', 'Hansi Flick', 'Carlo Anchelotti']
# players = []

# 1000.times do
#     teams.push(Faker::Sports::Football.team)
#     coaches.push(Faker::Sports::Football.coach)
#     players.push(Faker::Sports::Football.player)
# end

# teams.uniq!
# coaches.uniq!
# players.uniq!

# (1..20).each do |id|
#     Team.create!(
#         id: id,
#         team_name: teams[id - 1],
#         coach: coaches[id - 1],
#         capitan: players[id - 1],
#         year_of_creation: rand(1880..1980)
#     )
# end


#Creating Matches
# Бауманская футбольная лига
teams_id = [*1..10]
style = %w[БФЛ ИФЛ ЛЧ]

(1..20).each do |id|
    team_id = teams_id
    sop1 = rand(1..10)
    team_id -= [sop1]
    sop2 = team_id.sample
    vladenie1 = rand(20..100)
    vladenie2 = 100 - vladenie1
    vlad = "#{vladenie1} #{vladenie2}"
    udar_v_stvor = "#{rand(12)} #{rand(12)}"
    udar_mimo = "#{rand(25)} #{rand(25)}"
    ugol_udar = "#{rand(10)} #{rand(10)}"
    shtraf_udar = "#{rand(7)} #{rand(7)}"
    Match.create!(
        id: id,
        schet: "#{rand(6)}-#{rand(5)}",
        style: "БФЛ",
        shotout: false,
        statistic: "#{vlad}, #{udar_v_stvor}, #{udar_mimo}, #{ugol_udar}, #{shtraf_udar}",
        sop1_id: sop1,
        sop2_id: sop2,
        match_date: Faker::Date.between(from: '2018-01-3', to: '2018-06-14')
    )
end

# Измайловская футбольная лига
teams_id = [*10..20]
style = %w[БФЛ ИФЛ ЛЧ]

(1..20).each do |id|
    team_id = teams_id
    sop1 = rand(10..20)
    team_id -= [sop1]
    sop2 = team_id.sample
    vladenie1 = rand(20..100)
    vladenie2 = 100 - vladenie1
    vlad = "#{vladenie1} #{vladenie2}"
    udar_v_stvor = "#{rand(12)} #{rand(12)}"
    udar_mimo = "#{rand(25)} #{rand(25)}"
    ugol_udar = "#{rand(10)} #{rand(10)}"
    shtraf_udar = "#{rand(7)} #{rand(7)}"
    Match.create!(
        id: id + 20,
        schet: "#{rand(6)}-#{rand(5)}",
        style: "ИФЛ",
        shotout: false,
        statistic: "#{vlad}, #{udar_v_stvor}, #{udar_mimo}, #{ugol_udar}, #{shtraf_udar}",
        sop1_id: sop1,
        sop2_id: sop2,
        match_date: Faker::Date.between(from: '2018-01-3', to: '2018-06-14')
    )
end

# Лига Чемпионов