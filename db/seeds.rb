3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog_post|
    Blog.create!(
        title: "My blog Post #{blog_post + 1}",
        body: "But I know the rage that drives you. That impossible anger strangIing the grief until the memory of your loved one is just poison in your veins. And one day, you catch yourself wishing the person you loved had never existed so you'd be spared your pain.
        You see, I'm a guy of simple taste. I enjoy dynamite and gunpowder and gasoline.
        I hope you're not a member of the fire brigade.
        It's ends here. I seek the means to fight injustice. To turn fear against those who prey on the fearful.
        As Gotham's favored son you will be ideally placed to strike at the heart of criminality.",
        topic_id: Topic.last.id
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

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio Title #{portfolio_item + 1}",
        subtitle: "Ruby on Rails",
        body: "I hope you're not a member of the fire brigade.
        It's ends here. I seek the means to fight injustice. To turn fear against those who prey on the fearful.
        As Gotham's favored son you will be ideally placed to strike at the heart of criminality.",
        main_image: 'https://placeimg.com/600/400/any',
        thumb_image:'https://placeimg.com/350/200/any'
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio Title #{portfolio_item + 1}",
        subtitle: "Angular",
        body: "I hope you're not a member of the fire brigade.
        It's ends here. I seek the means to fight injustice. To turn fear against those who prey on the fearful.
        As Gotham's favored son you will be ideally placed to strike at the heart of criminality.",
        main_image: 'https://placeimg.com/600/400/any',
        thumb_image:'https://placeimg.com/350/200/any'
    )
end