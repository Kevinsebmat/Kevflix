require 'open-uri'

User.destroy_all
Profile.destroy_all

ListMovie.destroy_all
Genre.destroy_all
Movie.destroy_all
List.destroy_all


# USERS

demouser = User.create!({email: "demouser@gmail.com", password: "password222"})

user1 = User.create!({email: "user1@gmail.com", password: "user1password"})



trending = Genre.create!({name: "Trending"})

action= Genre.create!({name: "Action"})


comedy = Genre.create!({name: "Comedy"})


movie1 = Movie.create!({
title: "Godzilla vs Kong",
description: "In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.",
year: 2021,
duration: "1h 53m",
maturity_rating: "PG-13",
director: "Adam Wingard",
cast: "Alexander Skarsgård, Millie Bobby Brown, Rebecca Hall",
genre_id: trending.id
})

movie1.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/399566-godzilla+vs+Kong.mp4"), filename: "kong_trailer.mp4")
movie1.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg"), filename: "kong_thumbnail.jpg")
movie1.logo.attach(io: open("https://image.tmdb.org/t/p/w500//pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg"), filename: "kong_logo.png")





movie2 = Movie.create!({
title: "Thunderforce",
description: "In a world where supervillains are commonplace, two estranged childhood best friends reunite after one devises a treatment that gives them powers to protect their city.",
year: 2021,
duration: "1h 47m",
maturity_rating: "PG-13",
director: "Ben Falcone",
cast: "Melissa McCarthy, Octavia Spencer, Jason Bateman",
genre_id: trending.id
})

movie2.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/615678-thunderforce.mp4"), filename: "thunderforce.mp4")
movie2.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//279yOM4OQREL36B3SECnRxoB4MZ.jpg"), filename: "thunderforce.jpg")
movie2.logo.attach(io: open("https://image.tmdb.org/t/p/w500//279yOM4OQREL36B3SECnRxoB4MZ.jpg"), filename: "thunderforce.png")


movie3 = Movie.create!({
title: "The Marksman",
description: "Jim Hanson’s quiet life is suddenly disturbed by two people crossing the US/Mexico border – a woman and her young son – desperate to flee a Mexican cartel. After a shootout leaves the mother dead, Jim becomes the boy’s reluctant defender. He embraces his role as Miguel’s protector and will stop at nothing to get him to safety, as they go on the run from the relentless assassins.",
year: 2021,
duration: "1h 48m",
maturity_rating: "PG-13",
director: "Robert Lorenz",
cast: "Liam Neeson, Katheryn Winnick, Teresa Ruiz",
genre_id: trending.id
})

movie3.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/634528-the+marksman.mp4"), filename: "marksman_trailer.mp4")
movie3.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//1w1TVqCiEWqYnfrNUL0N1W8LAfA.jpg"), filename: "marksman.png")
movie3.logo.attach(io: open("https://image.tmdb.org/t/p/w500//1w1TVqCiEWqYnfrNUL0N1W8LAfA.jpg"), filename: "marksman.png")


movie4 = Movie.create!({
title: "New Gods: Nezha Reborn",
description: "3000 years after the boy-god Nezha conquers the Dragon King then disappears in mythological times, he returns as an ordinary man to find his own path to becoming a true hero.
",
year: 2021,
duration: "1h 56m",
maturity_rating: "PG-13",
director: "Ji Zhao",
cast: "Tianxiang Yang, He Zhang, Xuan Xiaoming",
genre_id: trending.id
})

movie4.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/663558-nezha+reborn.mp4"), filename: "nezha.mp4")
movie4.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//6goDkAD6J3br81YMQf0Gat8Bqjy.jpg"), filename: "nezha.jpg")
movie4.logo.attach(io: open("https://image.tmdb.org/t/p/w500//6goDkAD6J3br81YMQf0Gat8Bqjy.jpg"), filename: "nezha.png")





movie5 = Movie.create!({
title: "Chaos Walking",
description: "Two unlikely companions embark on a perilous adventure through the badlands of an unexplored planet as they try to escape a dangerous and disorienting reality, where all inner thoughts are seen and heard by everyone.",
year: 2021,
duration: "1h 49m",
maturity_rating: "PG-13",
director: "Patrick Ness",
cast: "Tom Holland, Daisy Ridley, Mads Mikkelsen",
genre_id: action.id
})

movie5.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/412656-chaos+walking.mp4"), filename: "chaos_trailer.mp4")
movie5.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//9kg73Mg8WJKlB9Y2SAJzeDKAnuB.jpg"), filename: "chaos_thumbnail.jpg")
movie5.logo.attach(io: open("https://image.tmdb.org/t/p/w500//9kg73Mg8WJKlB9Y2SAJzeDKAnuB.jpg"), filename: "chaos.png")





movie6 = Movie.create!({
title: "Wonder Woman 1984",
description: "A botched store robbery places Wonder Woman in a global battle against a powerful and mysterious ancient force that puts her powers in jeopardy.",
year: 2021,
duration: "2h 31m",
maturity_rating: "PG-13",
director: "Patty Jenkins",
cast: "Gal Gadot, Chris Pine, Kristen Wiig",
genre_id: action.id
})

movie6.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/464052-wonder+woman.mp4"), filename: "wonderwoman_trailer.mp4")
movie6.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg"), filename: "wonderwoman_thumbnail.jpg")
movie6.logo.attach(io: open("https://image.tmdb.org/t/p/w500//8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg"), filename: "wonderwoman_logo.jpg")


movie7 = Movie.create!({
title: "Night in Paradise",
description: "A gangster tries to clean up his life to care for his sick sister and nephew. But someone targeting him accidentally kills them instead. In shock, he decides to take revenge.",
year: 2021,
duration: "2h 11m",
maturity_rating: "R",
director: "Park Hoon-jung",
cast: "Um Tae-goo, Jeon Yeo-been, Cha Seung-won",
genre_id: action.id
})

movie7.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/606523-night+in+paradise.mp4"), filename: "nightinparadise_trailer.mp4")
movie7.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//dYCWUAidqgakGETwZkfGxU7CWhL.jpg"), filename: "nightinparadise_thumbnail.jpg")
movie7.logo.attach(io: open("https://image.tmdb.org/t/p/w500//dYCWUAidqgakGETwZkfGxU7CWhL.jpg"), filename: "nightinparadise_logo.png")


movie8 = Movie.create!({
title: "Mortal Kombat",
description: "Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Emperor Shang Tsung's best warrior, Sub-Zero, seeks out and trains with Earth's greatest champions as he prepares to stand against the enemies of Outworld in a high stakes battle for the universe.",
year: 2021,
duration: "1h 50m",
maturity_rating: "R",
director: "Simon McQuoid",
cast: "Lewis Tan, Jessica McNamee, Josh Lawson",
genre_id: action.id
})

movie8.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/460465-mortal+kombart.mp4"), filename: "mortal-combat_trailer.mp4")
movie8.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//8yhtzsbBExY8mUct2GOk4LDDuGH.jpg"), filename: "mortal-combat_thumbnail.jpg")
movie8.logo.attach(io: open("https://image.tmdb.org/t/p/w500//8yhtzsbBExY8mUct2GOk4LDDuGH.jpg"), filename: "mortal-combat_logo.jpg")



movie9 = Movie.create!({
title: "Zack Snyder's Justice League ",
description: "Determined to ensure Superman's ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.",
year: 2021,
duration: "4h 2m",
maturity_rating: "PG-13",
director: "Zach Snydere",
cast: "Ben Affleck, Henry Cavill, Gal Gadot",
genre_id: action.id
})

movie9.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/791373-Justice+League.mp4"), filename: "justice-league_trailer.mp4")
movie9.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg"), filename: "justice-league_thumbnail.jpg")
movie9.logo.attach(io: open("https://image.tmdb.org/t/p/w500//tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg"), filename: "justice-league_logo.png")


movie10 = Movie.create!({
title: "Soul",
description: "Joe Gardner is a middle school teacher with a love for jazz music. After a successful gig at the Half Note Club, he suddenly gets into an accident that separates his soul from his body and is transported to the You Seminar, a center in which souls develop and gain passions before being transported to a newborn child. Joe must enlist help from the other souls-in-training, like 22, a soul who has spent eons in the You Seminar, in order to get back to Earth.",
year: 2020,
duration: "1h 41m",
maturity_rating: "PG",
director: "Pete Docter",
cast: "Jamie Foxx, Tina Fey, Ahmir-Khalib Thompson",
genre_id: comedy.id
})
movie10.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/508442-soul.mp4"), filename: "soul_trailer.mp4")
movie10.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//hm58Jw4Lw8OIeECIq5qyPYhAeRJ.jpg"), filename: "soul_thumbnail.jpg")
movie10.logo.attach(io: open("https://image.tmdb.org/t/p/w500//hm58Jw4Lw8OIeECIq5qyPYhAeRJ.jpg"), filename: "soul_logo.png")


movie11 = Movie.create!({
title: "The Croods: A New Age",
description: "Searching for a safer habitat, the prehistoric Crood family discovers an idyllic, walled-in paradise that meets all of its needs. Unfortunately, they must also learn to live with the Bettermans -- a family that's a couple of steps above the Croods on the evolutionary ladder. As tensions between the new neighbors start to rise, a new threat soon propels both clans on an epic adventure that forces them to embrace their differences, draw strength from one another, and survive together.",
year: 2020,
duration: "1h 35m",
maturity_rating: "PG",
director: "Joel Crawford",
cast: "Nicolas Cage, Emma Stone, Ryan Reynolds",
genre_id: comedy.id
})

movie11.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/529203-croods+new+age.mp4"), filename: "croods_trailer.mp4")
movie11.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//tbVZ3Sq88dZaCANlUcewQuHQOaE.jpg"), filename: "croods_thumbnail.jpg")
movie11.logo.attach(io: open("https://image.tmdb.org/t/p/w500//tbVZ3Sq88dZaCANlUcewQuHQOaE.jpg"), filename: "croods_logo.png")

movie12 = Movie.create!({
title: "Tom & Jerry",
description: "Tom the cat and Jerry the mouse get kicked out of their home and relocate to a fancy New York hotel, where a scrappy employee named Kayla will lose her job if she can’t evict Jerry before a high-class wedding at the hotel. Her solution? Hiring Tom to get rid of the pesky mouse.",
year: 2020,
duration: "1h 41m",
maturity_rating: "PG",
director: "Tim Story",
cast: "Chloë Grace Moretz, Michael Peña, Colin Jost",
genre_id: comedy.id
})


movie12.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/587807-tom+and+jerry.mp4"), filename: "tom_jerry_trailer.mp4")
movie12.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//6KErczPBROQty7QoIsaa6wJYXZi.jpg"), filename: "tom_jerry_thumbnail.jpg")
movie12.logo.attach(io: open("https://image.tmdb.org/t/p/w500//6KErczPBROQty7QoIsaa6wJYXZi.jpg"), filename: "tom_jerry_logo.png")

movie14 = Movie.create!({
title: "Aquaslash",
description: "To celebrate their graduation, the teenagers from Valley Hills High School have organized an ’80s-themed party at the old Wet Valley water park. Things turn gruesome when it's revealed that a mysterious maniac has inserted giant razor blades into one of the water slides. The water park thus becomes the backdrop for a bloodbath (literally), and everyone is a suspect...",
year: 2019,
duration: "1h 12m",
maturity_rating: "R",
director: "Renaud Gauthier",
cast: "Nicolas Fontaine, Brittany Drisdelle, Madeline Harvey",
genre_id: comedy.id
})

movie14.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/607383-aquaslash.mp4"), filename: "aquaslash_trailer.mp4")
movie14.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//wB8qqLIaYDkYEnjbS5hAJiTuYU6.jpg"), filename: "aquaslash_thumbnail.jpg")
movie14.logo.attach(io: open("https://image.tmdb.org/t/p/w500//wB8qqLIaYDkYEnjbS5hAJiTuYU6.jpg"), filename: "aquaslash_logo.png")

movie15 = Movie.create!({
title: "Just Say Yes",
description: "To celebrate their graduation, the teenagers from Valley Hills High School have organized an ’80s-themed party at the old Wet Valley water park. Things turn gruesome when it's revealed that a mysterious maniac has inserted giant razor blades into one of the water slides. The water park thus becomes the backdrop for a bloodbath (literally), and everyone is a suspect...",
year: 2021,
duration: "1h 37m",
maturity_rating: "R",
director: "Aram van de Rest",
cast: "Yolanthe Cabau, Huub Smit, Jim Bakkum",
genre_id: comedy.id
})
movie15.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/802504-just+say+yes.mp4"), filename: "just-say-yes_trailer.mp4")
movie15.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w500//3btDwus5VN5jOWfA9strpDJWwfj.jpg"), filename: "just-say-yes_thumbnail.jpg")
movie15.logo.attach(io: open("https://image.tmdb.org/t/p/w500//3btDwus5VN5jOWfA9strpDJWwfj.jpg"), filename: "just-say-yes_logo.png")

