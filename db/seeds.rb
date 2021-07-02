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
movie1.thumbnail.attach(io: open("https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/01/godzilla-vs-kong-poster-social.jpg?q=50&fit=contain&w=750&h=375&dpr=1.5"), filename: "kong_thumbnail.jpg")
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
movie2.thumbnail.attach(io: open("https://news.newonnetflix.info/wp-content/uploads/2021/03/thunderforce-wide.jpg"), filename: "thunderforce.jpg")
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
movie3.thumbnail.attach(io: open("https://thepeachreview.files.wordpress.com/2021/01/the-marksman.jpg"), filename: "marksman.png")
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
movie4.thumbnail.attach(io: open("https://i2.wp.com/www.mobi-racer.com/wp-content/uploads/2021/04/New-Gods-Nezha-Reborn-2021.jpg"), filename: "nezha.jpg")
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
movie5.thumbnail.attach(io: open("https://www.dailyhindnews.com/wp-content/uploads/2021/02/1612323537_Chaos-Walking-Tom-Holland-Daisy-Ridley-and-Mads-Mikkelsen-on.jpg"), filename: "chaos_thumbnail.jpg")
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
movie6.thumbnail.attach(io: open("https://theunderscenecom.files.wordpress.com/2020/08/wonder-woman-1984-wallpaper-background-video-conference-1-1024x576-1.jpg?w=1024"), filename: "wonderwoman_thumbnail.jpg")
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
movie7.thumbnail.attach(io: open("https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABRxL7G7-7s77Zve0MV-OumosNlMQm0pe8-cKECskqNKsVFc_kRhC2xYBA3uqu10-86WFEsIYJ5QjhbKcvyws_FpDOayOa4OmmrXExaeAKmIXJ52jRYgpocGYpN3PRA.jpg?r=155"), filename: "nightinparadise_thumbnail.jpg")
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
movie8.thumbnail.attach(io: open("https://newretrowave.com/wp-content/uploads/2021/04/mortal-kombat.jpg"), filename: "mortal-combat_thumbnail.jpg")
movie8.logo.attach(io: open("https://image.tmdb.org/t/p/w500//8yhtzsbBExY8mUct2GOk4LDDuGH.jpg"), filename: "mortal-combat_logo.jpg")



movie9 = Movie.create!({
title: "Zack Snyder's Justice League",
description: "Determined to ensure Superman's ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.",
year: 2021,
duration: "4h 2m",
maturity_rating: "PG-13",
director: "Zach Snyder",
cast: "Ben Affleck, Henry Cavill, Gal Gadot",
genre_id: action.id
})

movie9.trailer.attach(io: open("https://kevflix.s3-us-west-2.amazonaws.com/791373-Justice+League.mp4"), filename: "justice-league_trailer.mp4")
movie9.thumbnail.attach(io: open("https://darkknightnews.com/wp-content/uploads/2020/11/2020-11-04-Snyder-Cut-Trailer.jpg"), filename: "justice-league_thumbnail.jpg")
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
movie10.thumbnail.attach(io: open("https://whatsondisneyplus.com/wp-content/uploads/2020/11/93B0008A-5CE3-446A-8381-9DF74F9AFA15-1024x576.jpeg"), filename: "soul_thumbnail.jpg")
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
movie11.thumbnail.attach(io: open("https://www.catholicnews.com/wp-content/uploads/custom/0922-287-CNS-MOVIE-REVIEW-CROODS-NEW-AGE.jpg"), filename: "croods_thumbnail.jpg")
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
movie12.thumbnail.attach(io: open("https://media.flickeringmyth.com/q:intelligent/retina:false/webp:false/w:1/url:https://cdn.flickeringmyth.com/wp-content/uploads/2020/07/Tom-and-Jerry-Movie-Logo-1-600x416.jpg"), filename: "tom_jerry_thumbnail.jpg")
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
movie14.thumbnail.attach(io: open("https://image.tmdb.org/t/p/w780/shBno7mSow9hZROeVO7PqVNkPQp.jpg"), filename: "aquaslash_thumbnail.jpg")
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
movie15.thumbnail.attach(io: open("https://www.insanveyasam.com/wp-content/uploads/2021/03/Just-Say-Yes-Filmi.jpg?v=1617216828"), filename: "just-say-yes_thumbnail.jpg")
movie15.logo.attach(io: open("https://image.tmdb.org/t/p/w500//3btDwus5VN5jOWfA9strpDJWwfj.jpg"), filename: "just-say-yes_logo.png")
##################################################################

movie16 = Movie.create!({
title: "Army of the Dead",
description: "Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble: venturing into the quarantine zone to pull off the greatest heist ever attempted.",
year: 2021,
duration: "2h 28m",
maturity_rating: "R",
director: "Zach Snyder",
cast: "Dave Bautista, Ella Purnell, Omari Hardwick",
genre_id: trending.id
})

movie16.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Army+of+the+Dead++Official+Trailer.mp4"), filename: "army_of_the_dead.mp4")
movie16.thumbnail.attach(io: open("https://www.ewrestlingnews.com/wp-content/uploads/2021/05/dave-bautista-army-of-the-dead.jpg"), filename: "justice-league_thumbnail.jpg")
movie16.logo.attach(io: open("https://www.ewrestlingnews.com/wp-content/uploads/2021/05/dave-bautista-army-of-the-dead.jpg"), filename: "justice-league_logo.png")


movie17 = Movie.create!({
title: "Blue Miracle",
description: "To save their cash-strapped orphanage, a guardian and his kids partner with a washed-up boat captain for a chance to win a lucrative fishing competition.",
year: 2021,
duration: "1h 35m",
maturity_rating: "PG",
director: "Julio Quintana",
cast: "Jimmy Gonzales, Dennis Quaid, Anthony Gonzalez",
genre_id: trending.id
})

movie17.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Blue+Miracle++Official+Trailer++Netflix.mp4"), filename: "blue_miracle.mp4")
movie17.thumbnail.attach(io: open("https://ntvb.tmsimg.com/assets/p19852382_v_h10_aa.jpg?w=1280&h=720"), filename: "justice-league_thumbnail.jpg")
movie17.logo.attach(io: open("https://image.tmdb.org/t/p/w500//xBdP9Z0oVAx25tM2gUOtq298jxR.jpg"), filename: "justice-league_logo.png")

movie18 = Movie.create!({
title: "Cruella",
description: "In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.",
year: 2021,
duration: "2h 14m",
maturity_rating: "PG13",
director: "Craig Gillespie",
cast: "Emma Stone, Emma Thompson, Mark Strong",
genre_id: trending.id
})

movie18.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Disneys+Cruella++Official+Trailer.mp4"), filename: "cruella.mp4")
movie18.thumbnail.attach(io: open("https://miro.medium.com/max/3132/1*6Xm293DP4c8r_w6yeEFLKw.jpeg"), filename: "justice-league_thumbnail.jpg")
movie18.logo.attach(io: open("https://image.tmdb.org/t/p/w500//rTh4K5uw9HypmpGslcKd4QfHl93.jpg"), filename: "justice-league_logo.png")

movie19 = Movie.create!({
title: "Those Who Wish Me Dead",
description: "A young boy finds himself pursued by two assassins in the Montana wilderness with a survival expert determined to protecting him - and a forest fire threatening to consume them all.",
year: 2021,
duration: "1h 40m",
maturity_rating: "R",
director: "Taylor Sheridan",
cast: "Angelina Jolie, Finn Little, Jon Bernthal",
genre_id: trending.id
})

movie19.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/THOSE+WHO+WISH+ME+DEAD++Official+Trailer.mp4"), filename: "those_who_wish_me_dead.mp4")
movie19.thumbnail.attach(io: open("https://jumpcutonline.co.uk/wp-content/uploads/2021/05/Dead2-1200x675.jpg"), filename: "justice-league_thumbnail.jpg")
movie19.logo.attach(io: open("https://image.tmdb.org/t/p/w500//xCEg6KowNISWvMh8GvPSxtdf9TO.jpg"), filename: "justice-league_logo.png")

movie20 = Movie.create!({
title: "Wrath of Man",
description: "A cold and mysterious new security guard for a Los Angeles cash truck company surprises his co-workers when he unleashes precision skills during a heist. The crew is left wondering who he is and where he came from. Soon, the marksman's ultimate motive becomes clear as he takes dramatic and irrevocable steps to settle a score.",
year: 2021,
duration: "1h 59m",
maturity_rating: "R",
director: "Guy Ritchie",
cast: "Jason Statham, Holt McCallany, Eddie Marsan",
genre_id: trending.id
})

movie20.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/WRATH+OF+MAN+Official+Trailer+2021.mp4"), filename: "wrath_of_a_man.mp4")
movie20.thumbnail.attach(io: open("https://assets.fontsinuse.com/static/use-media-items/139/138869/full-2880x1040/6099a63b/wrath-of-man-2880x1040.jpeg"), filename: "justice-league_thumbnail.jpg")
movie20.logo.attach(io: open("https://image.tmdb.org/t/p/w500//M7SUK85sKjaStg4TKhlAVyGlz3.jpg"), filename: "justice-league_logo.png")

movie21 = Movie.create!({
title: "Demon Slayer -Kimetsu no Yaiba- The Movie: Mugen Train",
description: "Tanjirō Kamado, joined with Inosuke Hashibira, a boy raised by boars who wears a boar's head, and Zenitsu Agatsuma, a scared boy who reveals his true power when he sleeps, boards the Infinity Train on a new mission with the Fire Hashira, Kyōjurō Rengoku, to defeat a demon who has been tormenting the people and killing the demon slayers who oppose it!",
year: 2020,
duration: "1h 57m",
maturity_rating: "R",
director: "Haruo Sotozaki",
cast: "Natsuki Hanae, Hiro Shimono, Yoshitsugu Matsuoka",
genre_id: action.id
})

movie21.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Demon+Slayer+Kimetsu+no+Yaiba.mp4"), filename: "Kimetsu_no_Yaiba.mp4")
movie21.thumbnail.attach(io: open("https://images3.alphacoders.com/114/1142445.png"), filename: "justice-league_thumbnail.jpg")
movie21.logo.attach(io: open("https://image.tmdb.org/t/p/w500//h8Rb9gBr48ODIwYUttZNYeMWeUU.jpg"), filename: "justice-league_logo.png")

movie22 = Movie.create!({
title: "Nobody",
description: "Hutch Mansell, a suburban dad, overlooked husband, nothing neighbor — a nobody. When two thieves break into his home one night, Hutch's unknown long-simmering rage is ignited and propels him on a brutal path that will uncover dark secrets he fought to leave behind.",
year: 2021,
duration: "1h 32m",
maturity_rating: "R",
director: "Ilya Naishuller",
cast: "Bob Odenkirk, Aleksey Serebryakov, Connie Nielsen",
genre_id: action.id
})

movie22.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Nobody++Official+Trailer+HD.mp4"), filename: "nobody.mp4")
movie22.thumbnail.attach(io: open("https://watch.att.com/uverse/movies-on-demand/sites/g/files/jueztd596/files/images/2021-04/pvod_nobody_1920x1080.jpg"), filename: "justice-league_thumbnail.jpg")
movie22.logo.attach(io: open("https://image.tmdb.org/t/p/w500//oBgWY00bEFeZ9N25wWVyuQddbAo.jpg"), filename: "justice-league_logo.png")

movie23 = Movie.create!({
title: "The Virtuoso",
description: "HA lonesome stranger with nerves of steel must track down and kill a rogue hitman to satisfy an outstanding debt. But the only information he's been given is a time and location where to find his quarry. No name. No description. Nothing.",
year: 2021,
duration: "1h 45m",
maturity_rating: "R",
director: "Nick Stagliano",
cast: "Anthony Hopkins, Abbie Cornish, Diora Baird",
genre_id: action.id
})

movie23.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/The+Virtuoso++Exclusive+Official+Trailer+2021.mp4"), filename: "virtuoso.mp4")
movie23.thumbnail.attach(io: open("https://is3-ssl.mzstatic.com/image/thumb/Video124/v4/9b/23/91/9b2391fd-8e33-daf5-bea8-138243aa5144/pr_source.lsr/1200x675.jpg"), filename: "justice-league_thumbnail.jpg")
movie23.logo.attach(io: open("https://image.tmdb.org/t/p/w500//vXHzO26mJaOt4VO7ZFiM6No5ScT.jpg"), filename: "justice-league_logo.png")

movie24 = Movie.create!({
title: "Vanquish",
description: "Victoria is a young mother trying to put her dark past as a Russian drug courier behind her, but retired cop Damon forces Victoria to do his bidding by holding her daughter hostage. Now, Victoria must use guns, guts and a motorcycle to take out a series of violent gangsters—or she may never see her child again.",
year: 2021,
duration: "1h 36m",
maturity_rating: "R",
director: "George Gallo",
cast: "Morgan Freeman, Ruby Rose, Patrick Muldoon",
genre_id: action.id
})

movie24.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/VANQUISH+Official+Trailer+2021.mp4"), filename: "vanquish.mp4")
movie24.thumbnail.attach(io: open("https://nbcpalmsprings.com/wp-content/uploads/sites/8/2021/04/VANQUISH-INTERVIEW-RUBY-ROSE-MORGAN-FREEMAN-GEORGE-GALLO-JUJU-JOURNEY-BRENER.jpg"), filename: "justice-league_thumbnail.jpg")
movie24.logo.attach(io: open("https://image.tmdb.org/t/p/w500//AoWY1gkcNzabh229Icboa1Ff0BM.jpg"), filename: "justice-league_logo.png")

movie25 = Movie.create!({
title: "Tom Clancy's Without Remorse",
description: "An elite Navy SEAL uncovers an international conspiracy while seeking justice for the murder of his pregnant wife.",
year: 2021,
duration: "1h 49m",
maturity_rating: "R",
director: "Stefano Sollima",
cast: "Michael B. Jordan, Jamie Bell, Jodie Turner-Smith",
genre_id: action.id
})

movie25.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Without+Remorse++Official+Trailer.mp4"), filename: "without_remorse.mp4")
movie25.thumbnail.attach(io: open("https://mir-s3-cdn-cf.behance.net/project_modules/disp/62316a118593069.608c09040a10b.jpg"), filename: "justice-league_thumbnail.jpg")
movie25.logo.attach(io: open("https://image.tmdb.org/t/p/w500//rEm96ib0sPiZBADNKBHKBv5bve9.jpg"), filename: "justice-league_logo.png")


movie26 = Movie.create!({
title: "Maggie Simpson in The Force Awakens from Its Nap",
description: "In a daycare far, far away… but still in Springfield, Maggie is on an epic quest for her stolen pacifier. Her adventure brings her face-to-face with young Padawans, Sith Lords, familiar droids, Rebel scum, and an ultimate battle against the dark side, in this original short celebrating the Star Wars galaxy.",
year: 2021,
duration: "3m",
maturity_rating: "PG",
director: "David Silverman",
cast: "Joel H. Cohen, Michael Price, Al Jean",
genre_id: comedy.id
})

movie26.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/The+Force+Awakens+From+It's+Nap.mp4"), filename: "force_awakens_from_its_nap.mp4")
movie26.thumbnail.attach(io: open("https://lumiere-a.akamaihd.net/v1/images/60918e9f9b7146000112f757-image_b30af6c9.jpeg?region=0%2C0%2C1536%2C864"), filename: "justice-league_thumbnail.jpg")
movie26.logo.attach(io: open("https://image.tmdb.org/t/p/w500//2xnf2ZaGXudvgBKPtVXMkNeooh1.jpg"), filename: "justice-league_logo.png")

movie27 = Movie.create!({
title: "22 vs. Earth",
description: "Set before the events of ‘Soul’, 22 refuses to go to Earth, enlisting a gang of 5 new souls in attempt of rebellion. However, 22’s subversive plot leads to a surprising revelation about the meaning of life.",
year: 2021,
duration: "9m",
maturity_rating: "G",
director: "Kevin Nolting",
cast: "Tina Fey, Alice Braga, Richard Ayoade",
genre_id: comedy.id
})

movie27.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/22+vs+Earth+First+Look++Pixar.mp4"), filename: "22_vs_Earth_First_Look.mp4")
movie27.thumbnail.attach(io: open("https://weliveentertainment.com/wp-content/uploads/2021/05/22-vs.-Earth.jpeg"), filename: "justice-league_thumbnail.jpg")
movie27.logo.attach(io: open("https://image.tmdb.org/t/p/w500//32vLDKSzcCMh55zqqaSqqUA8naz.jpg"), filename: "justice-league_logo.png")


movie28 = Movie.create!({
title: "Monster Pets: A Hotel Transylvania Short",
description: "Drac tries out some new monster pets to help occupy Tinkles for playtime.",
year: 2021,
duration: "6m",
maturity_rating: "G",
director: "Derek Drymon",
cast: "Brian Hull, Jennifer Kluska, Derek Drymon",
genre_id: comedy.id
})

movie28.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Monster+Pets++A+Hotel+Transylvania+Short+Film.mp4"), filename: "Hotel_Transylvania.mp4")
movie28.thumbnail.attach(io: open("https://www.awn.com/sites/default/files/styles/original/public/image/featured/ht4_mnstrpets_horiz_lm_v8_wtitle_30sheet-1280.jpg?itok=lnRlGrTz"), filename: "justice-league_thumbnail.jpg")
movie28.logo.attach(io: open("https://image.tmdb.org/t/p/w500//dkokENeY5Ka30BFgWAqk14mbnGs.jpg"), filename: "justice-league_logo.png")


movie29 = Movie.create!({
title: "Willy's Wonderland",
description: "When his car breaks down, a quiet loner agrees to clean an abandoned family fun center in exchange for repairs. He soon finds himself waging war against possessed animatronic mascots while trapped inside Willy's Wonderland.",
year: 2021,
duration: "1h 28m",
maturity_rating: "R",
director: "Kevin Lewis",
cast: "Nicolas Cage, Emily Tosta, Beth Grant",
genre_id: comedy.id
})

movie29.trailer.attach(io: open("https://kevflix.s3.us-west-2.amazonaws.com/Willys+Wonderland++Official+Trailer.mp4"), filename: "Willys_Wonderland.mp4")
movie29.thumbnail.attach(io: open("https://butwhythopodcast.com/wp-content/uploads/2021/02/Er0VCbpW4AADovZ.jpg"), filename: "justice-league_thumbnail.jpg")
movie29.logo.attach(io: open("https://image.tmdb.org/t/p/w500//keEnkeAvifw8NSEC4f6WsqeLJgF.jpg"), filename: "justice-league_logo.png")
