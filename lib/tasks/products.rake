desc "Генерация 100 продуктов"
namespace :products do
  task :create => :environment do
    100.times do |i|
      p = Product.new(name: "Товар №#{i}", price: rand(10e6)/1000+1, weight: rand(3000)+1)
      p.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                  Quisque a ex a urna efficitur fringilla sit amet id turpis.
                  Sed non sapien non risus semper dapibus id quis mauris. Duis quis eleifend nisl.
                  Morbi maximus euismod orci nec vehicula. Sed mi diam, porttitor eget porttitor eu, placerat vel quam.
                  Praesent ut lacinia metus. Quisque egestas est vel nulla tincidunt, a tempor massa consequat.
                  Morbi et mattis velit. Suspendisse varius felis id enim varius, a tristique dolor cursus.
                  Fusce vulputate, ante nec consectetur blandit, dolor risus vulputate mauris,
                  id bibendum dolor nulla sit amet velit. Praesent id fringilla elit. Aliquam non tincidunt libero.
                  Donec non sapien lorem. Cum sociis natoque penatibus et magnis dis parturient montes,
                  nascetur ridiculus mus. Donec sollicitudin urna suscipit sapien pretium dapibus.
                  Nunc vel enim volutpat, placerat dui at, consectetur metus."
      p.save!
    end
  end
end