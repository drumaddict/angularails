namespace :populate do
  desc "Erase and fill database"
  task :things_and_types, [:number,:article_group_ids] => :environment do |t,args|
    #require 'populator'
    require 'faker'
     puts 'Populating'

   10.times do
    Factory(:thing, :type => Factory(:type), :employees => [Factory(:employee)])
  end




    article_group_ids=args[:article_group_ids].split(',').map{ |s| s.to_i }
    number=args[:number].to_i
    #[Category, Product, Person].each(&:delete_all)
     I18n.locale='el'
     number.times do
    Article.create({
    title: Faker::Lorem.sentence(3),
    summary: Faker::Lorem.sentence(10),
    body: Faker::Lorem.paragraph(30),
    published_at: Time.zone.now,
    featured:true,
    article_group_ids: article_group_ids,
    })
     end
  end
end