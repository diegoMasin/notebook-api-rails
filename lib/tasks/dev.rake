namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando os Contatos..."

    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.years.ago, to: Date.today)
      )
    end

    puts "Contatos cadastrados com sucesso!"
  end

end
