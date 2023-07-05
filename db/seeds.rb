#copy and paste each array of data and paste into rails console
puts SeedDump.dump(User)
User.create!([
  {name: "john", email: "john@email.com", password_digest: "password"},
  {name: "tom", email: "tom@gmail.com", password_digest: "$2a$12$qjRpda/cwNOVbcPZV03hD.ZYvsYwLAxBHXFDlDExQ7QXUxR4lKnzi"},
  {name: "jim", email: "jim@email.com", password_digest: "$2a$12$uAnABk/KhSS5DHcGSzg8ZeaebrGAitshE3s3j3B.ghsmzj3d6pA/6"},
  {name: nil, email: "tim@email.com", password_digest: "$2a$12$o37em3PuMscy.9ViLX1Td.wBjnz8Bza0J3JNeuf/FgvCpNw2GUo.2"},
  {name: "mike", email: "mike@email.com", password_digest: "$2a$12$iUHpzvvOI4dSJKtXc9TbqedDovyPOvo61eeOOqY/pXTtWKzyS.YKy"},
  {name: "lester", email: "lester@gmail.com", password_digest: "$2a$12$uJqW.ShxBXwI.0y05khh8.yGLziMPqGHSgQDCb4vR7ZHxXpnIMwEe"},
  {name: "steve", email: "steve@email.com", password_digest: "$2a$12$byrgE3li4qRxvLOYJ.uF7OP2/pWoR1VEWBRe28YjADS8JPHE7Gah."},
  {name: "tony", email: "tony@email.com", password_digest: "$2a$12$AfUndGbTD1j/ZPa2F38Ht.Y5Db6.Os9nR40ZsztEZe5G5SRMSbBD2"},
  {name: "christie", email: "christie@email.com", password_digest: "$2a$12$4FuZ0D6C8IooF67oa6qpUu5vHGQxRy1sPfiYMq2G4TeoimLvWfW2e"},
  {name: "bob", email: "bob@email.com", password_digest: "$2a$12$Qtan0wBU3wPuQYxoiXiASOeHxFAHv.sLVGSx0H1w/Ri.CW/sPXxYC"}
])
puts SeedDump.dump(Movie)
Movie.create!([
  {name: "fight club", image_url: "https://resizing.flixster.com/M5Zk9bfFAAQkvTkkTkNlUu4z_sA=/300x300/v2/https://flxt.tmsimg.com/assets/p23069_v_h9_ab.jpg", description: "The two bored men form an underground club with strict rules and fight other men who are fed up with their mundane lives", category: "drama"},
  {name: "Moneyball", image_url: "https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/chameleon/title-movie/229898_Moneyball_2011_1400x2100_US_1.jpg?itok=XqvCtAC0", description: "Billy Beane (Brad Pitt), general manager of the Oakland A's, one day has an epiphany: Baseball's conventional wisdom is all wrong. Faced with a tight budget, Beane must reinvent his team by outsmarting the richer ball clubs", category: "sports"},
  {name: "forrest gump", image_url: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/707d3da8c5a899ae82416fbec4a26bef3420d95b674bb2093745eecf615a3d47._RI_TTW_.jpg", description: "Slow-witted Forrest Gump (Tom Hanks) has never thought of himself as disadvantaged, and thanks to his supportive mother (Sally Field), he leads anything but a restricted life. Whether dominating on the gridiron as a college football star, fighting in Vietnam or captaining a shrimp boat, Forrest inspires people with his childlike optimism. But one person Forrest cares about most may be the most difficult to save -- his childhood love, the sweet but troubled Jenny (Robin Wright).", category: "romance"},
  {name: "Good Will Hunting", image_url: "https://www.miramax.com/assets/726_GoodWillHunting_Catalog_Poster-BB_v2_Approved.png", description: "Will Hunting (Matt Damon) has a genius-level IQ but chooses to work as a janitor at MIT. When he solves a difficult graduate-level math problem, his talents are discovered by Professor Gerald Lambeau (Stellan Skarsgard), who decides to help the misguided youth reach his potential. When Will is arrested for attacking a police officer, Professor Lambeau makes a deal to get leniency for him if he will get treatment from therapist Sean Maguire (Robin Williams).", category: "drama"},
  {name: "Conjuring", image_url: "https://resizing.flixster.com/8Tb1MCZsLEQs_hf6oOOoDAjZxw8=/300x300/v2/https://flxt.tmsimg.com/assets/p9379266_p_v8_ah.jpg", description: "In 1970, paranormal investigators and demonologists Lorraine (Vera Farmiga) and Ed (Patrick Wilson) Warren are summoned to the home of Carolyn (Lili Taylor) and Roger (Ron Livingston) Perron. The Perrons and their five daughters have recently moved into a secluded farmhouse, where a supernatural presence has made itself known. Though the manifestations are relatively benign at first, events soon escalate in horrifying fashion, especially after the Warrens discover the house's macabre history.", category: "Horror"}
])
puts SeedDump.dump(Favorite)
Favorite.create!([
  {user_id: 3, movie_id: 3},
  {user_id: 3, movie_id: 4},
  {user_id: 3, movie_id: 9},
  {user_id: 7, movie_id: 7},
  {user_id: 7, movie_id: 9},
  {user_id: 3, movie_id: 10}
])
