User.create!([
  {email: "bob@email.com", encrypted_password: "$2a$10$xygnSVh8cU56rpPGAjCiMuM48I7e5ItdqLw6QoUjcPIpQo08ct9Cm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 11, current_sign_in_at: "2016-01-14 10:07:52", last_sign_in_at: "2016-01-13 23:18:29", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "admin", user_image: "euan_bobby.png", company: "Bob Team Ltd", bio: "I like stuff that is round, like pizza.  But not round cheese.  That's just weird.\r\n\r\nI like to tippy tappy on keyboards at 7am too.  It's more fun when it's cold and dark and the world is still in bed.", name: "Euan Bob", twitter: "@euanbob"},
  {email: "euan@email.com", encrypted_password: "$2a$10$P8jPRWHbl7/i5p2e1vtUrOU1WtBDBar7y6M7jGeINse90eH90b952", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 11, current_sign_in_at: "2016-01-14 08:08:19", last_sign_in_at: "2016-01-13 23:04:39", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "talent", user_image: "euan.jpeg", company: "The Big Cheese", bio: "I am all about this stuff.  I have a coffee and I can see sunlight.  And it's a bit wet out there.\r\n\r\nBut tech stuff, good.  CSS not so good.\r\n\r\nThat might need work.", name: "Euan Euan", twitter: "@euaneuan"},
  {email: "johnny@email.com", encrypted_password: "$2a$10$ozjn9/fGnRJdRJnABqW77uTKInC8jkuxazFRm/nr3/8JIbMKIbFu.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2016-01-14 09:44:24", last_sign_in_at: "2016-01-14 09:29:59", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "", user_image: "johnny.jpg", company: "Johnny Loves Jazz", bio: "For me, technology is all about jazz.  If you can't type it out on a saxaphone then there is no point in doing it.\r\n\r\nJazz.", name: "Euan Johnny", twitter: "@euanjohnny"},
  {email: "frank@google.com", encrypted_password: "$2a$10$/FOUNPlfes6hF.36y7nqquZ5omGsQL8sa.WUy5/OEmKv9dzBp10ZC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-01-14 08:24:56", last_sign_in_at: "2016-01-14 08:22:19", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "talent", user_image: "frank.jpg", company: "Google Ltd", bio: "Love working at Google, I get to steal all your data and private stuff.\r\n\r\nThen I get to search for people and change all their images to pictures of cats.", name: "Frank Google", twitter: "@frankgoogle"}
])
Booking.create!([
  {user_id: 1, event_id: 1, tickets_booked: 3, success: nil},
  {user_id: 2, event_id: 1, tickets_booked: 6, success: nil},
  {user_id: 1, event_id: 2, tickets_booked: 2, success: nil},
  {user_id: 1, event_id: 3, tickets_booked: 20, success: nil},
  {user_id: 2, event_id: 3, tickets_booked: 12, success: nil},
  {user_id: 2, event_id: 2, tickets_booked: 9, success: nil},
  {user_id: 3, event_id: 17, tickets_booked: 5, success: nil},
  {user_id: 3, event_id: 3, tickets_booked: 10, success: nil},
  {user_id: 4, event_id: 1, tickets_booked: 3, success: nil},
  {user_id: 4, event_id: 17, tickets_booked: 10, success: nil},
  {user_id: 4, event_id: 2, tickets_booked: 2, success: nil}
])
Comment.create!([
  {content: "Can't wait to go to this, sounds super amazing!", user_id: 1, event_id: 1},
  {content: "Super duper, can't wait!", user_id: 1, event_id: 3},
  {content: "Looks good, all about this one.  Defo going to it.", user_id: 1, event_id: 2},
  {content: "Yerp, sounds like a blast.  I wanna talk about Google Glass.", user_id: 4, event_id: 3},
  {content: "All about this.  defy all. About this.", user_id: 3, event_id: 3},
  {content: "Wow!  Ads!  And cats.  Great event!", user_id: 1, event_id: 17},
  {content: "I just love cat pics.\r\n\r\nAnd ads.  This does it for me.", user_id: 4, event_id: 17},
  {content: "Wow!  All good.  Will be there.", user_id: 3, event_id: 3},
  {content: "Microsoft sucks!  Why u not Google?", user_id: 3, event_id: 1}
])
Crowd.create!([
  {name: "Builders", group: "Hardware", description: "Where we make stuff out of things.  Like CPUs and cards.  Not cards for birthdays but things that slot into other things and nobody really understands why.", crowd_image: "builder.jpeg"},
  {name: "Bitcoin", group: "Fintech", description: "It's bread isn't it?  Online digital bread that we can chuck at stuff we want.\r\n\r\nGet yourself into this crowd to find out more.\r\n\r\nAnd maybe get some bread too.", crowd_image: "bread.png"},
  {name: "Health", group: "FitTech", description: "Health is very important for our bodies and also for the wallets of many, many companies that sell schizzle to us all that straps to us and does things.", crowd_image: "health.jpeg"},
  {name: "The Cloud", group: "Software", description: "The cloud is really just like a massive cake and we all love the cloud and here is where you need to go to find out about cloud related stuff.", crowd_image: "cake.jpg"}
])
Event.create!([
  {name: "Microsoft Product Launch", short: "This is the showcase for the launch of the new Microsoft Holoband Device!", description: "This is the showcase for the launch of the new Microsoft Holoband Device!\r\n\r\nHere you will see all about the product, talk to the designers and the developers.  Also get engaged with product demonstrations and other extremely super duper fun things too.\r\n\r\nWowee wow wow.  Aren't you all lucky ducks!", event_image: "ht_microsoft_cc_120823_wg.jpg", speaker_id: 2, crowd_id: 1, venue_id: 1, tag_id: 1},
  {name: "VMWare expo", short: "Find all the latest gizmos and treats here from the VM specialists at VMware.", description: "Find all the latest gizmos and treats here from the VM specialists at VMware.\r\n\r\nIt's all about virtual these days ain't it?  Everybody loves a good virtual.\r\n\r\nBuild up the magic virtual PC and then ka-blooey!  It's all done.  None of that hardware needed.\r\n\r\nApart from the enormous server and overpriced terminals that is.  Cheap as chips.", event_image: "vmware2.jpg", speaker_id: 3, crowd_id: 4, venue_id: 3, tag_id: 1},
  {name: "Google Grandstand", short: "All the google stuff here, data data data and search too!", description: "All the google stuff here, data data data and search too!\r\n\r\nLearn about Google, what they are up to and what they are doing today and tomorrow too.\r\n\r\nIt will be a rip roaring time of search and data.\r\n\r\nDo not talk about Google Glass!", event_image: "google.png", speaker_id: 1, crowd_id: 4, venue_id: 2, tag_id: 1},
  {name: "Facebook Fireside Chat", short: "Zuckerberg is over to talk about all the cash he has and how he is trying to give the world free wifi so he can tap us all for more advertising spend.", description: "Zuckerberg is over to talk about all the cash he has and how he is trying to give the world free wifi so he can tap us all for more advertising spend.\r\n\r\nShould be good though.  Gonna tweet about it.\r\n\r\nFacebook is a big site full of cat pics.", event_image: "facebook2.png", speaker_id: 4, crowd_id: 4, venue_id: 2, tag_id: 2}
])
Speaker.create!([
  {name: "Frank Google", email: "frank@google.com", twitter: "@frankgoogle", company: "Google Ltd", speaker_image: "frank.jpg"},
  {name: "Bobby Microsoft", email: "bobby@microsoft.com", twitter: "@bobbymicrosoft", company: "Microsoft", speaker_image: "bobby_micro.jpg"},
  {name: "Jon VMWare", email: "jon@vmware.com", twitter: "@jonvmware", company: "VMWare", speaker_image: "jon2.jpeg"},
  {name: "Verity McSausage", email: "verity@bigbang.com", twitter: "@veritysausage", company: "Big Bang Theory Ltd", speaker_image: "verity.jpg"}
])
Tag.create!([
  {name: "Build", description: "This is for hardware, infrastructure and more."},
  {name: "Online", description: "We talk about online things here.  Things that need browsers."},
  {name: "Games", description: "For all mobile, desktop and console games, playing and development"},
  {name: "Software", description: "For all the software stuff we need to know about.  Code and the likes."},
  {name: "Finance", description: "Fintech is everywhere, let's hope it kills the banks stone dead!"}
])
Venue.create!([
  {name: "Tech Hall", description: "This is the main tech arena for the major parts of the conference.\r\n\r\nYou need to come here as it is very nice.  And there may be free beer!", location: "Main arena", capacity: 1000, colour: "Blue", venue_image: "main_hall.jpeg"},
  {name: "Main Stage", description: "All the top talks and headliners will be appearing here.\r\n\r\nIt's outdoors.  And it's winter.  That'll be fun for you all then.\r\n\r\nBest wrap up.", location: "Main Arena", capacity: 2500, colour: "Green", venue_image: "main_stage.jpg"},
  {name: "Hall 4", description: "For builder talks and discussions with vendors\r\n\r\nIt's a purty place full of purty people, in a purty area.\r\n\r\nHurrah!", location: "Arena 2", capacity: 300, colour: "Blue", venue_image: "hall_4.jpeg"}
])
