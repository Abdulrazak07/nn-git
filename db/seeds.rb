3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog|
    Blog.create!(
        title: "My Blog post #{blog}",
        body: 'dfjkal;df adkjsfl kajdsqoi qwoeiuoi vkcjgj eior',
        topic_id: Topic.last.id
    )

end

5.times do |skill|
    Skill.create!(
        title: "rails #{skill}",
        percent_utilized :15
    )
end

9.times do |portfolio_items|
    Protfolio.create!(
        title: "Portfolio title #{portfolio_items}",
        subtitle: "Ruby on rails",
        body: "hlo #{portfolio_items}",
        main_image: "Lorem ipsum dolor sit amet, consectetur adipiscing 
        elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
            ullamco laboris nisi ut aliquip ex ea commodo consequat. 
            Duis aute irure dolor in reprehenderit in voluptate velit
             esse cillum dolore eu fugiat nulla pariatur. 
             Excepteur sint occaecat cupidatat non proident, 
             sunt in culpa qui officia deserunt mollit anim id est
              laborum.",
        thumb_image: "https://via.placeholder.com/350x200",
        main_image: "https://via.placeholder.com/600x400"
    )
end

1.times do |portfolio_items|
    Protfolio.create!(
        title: "Portfolio title #{portfolio_items}",
        subtitle: "Angular",
        main_image: "Lorem ipsum dolor sit amet, consectetur adipiscing 
        elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
            ullamco laboris nisi ut aliquip ex ea commodo consequat. 
            Duis aute irure dolor in reprehenderit in voluptate velit
             esse cillum dolore eu fugiat nulla pariatur. 
             Excepteur sint occaecat cupidatat non proident, 
             sunt in culpa qui officia deserunt mollit anim id est
              laborum.",
        thumb_image: "https://via.placeholder.com/350x200",
        main_image: "https://via.placeholder.com/600x400"
    )
end

puts '5 skill created'
p '9 porfolio created'