10.times do |post|
    Post.create!(
        title: "My blog Post #{post + 1}",
        body: "But I know the rage that drives you. That impossible anger strangIing the grief until the memory of your loved one is just poison in your veins. And one day, you catch yourself wishing the person you loved had never existed so you'd be spared your pain.
        You see, I'm a guy of simple taste. I enjoy dynamite and gunpowder and gasoline.
        I hope you're not a member of the fire brigade.
        It's ends here. I seek the means to fight injustice. To turn fear against those who prey on the fearful.
        As Gotham's favored son you will be ideally placed to strike at the heart of criminality."
    )
end

skills = ['Rails', 'HTML', 'CSS']
percents_u = [5, 10, 15, 20, 25]

5.times do |skill|
    Skill.create!(
        title: skills.sample,
        percent_utilized: percents_u.sample
    )
end

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio Title #{portfolio_item + 1}",
        subtitle: 'My great subtitle',
        body: "I hope you're not a member of the fire brigade.
        It's ends here. I seek the means to fight injustice. To turn fear against those who prey on the fearful.
        As Gotham's favored son you will be ideally placed to strike at the heart of criminality.",
        main_image: 'http://placehold.it/600/400',
        thumb_image:'http://placehold.it/350/200'
    )
end