# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Anime.destroy_all
Episode.destroy_all
Service.destroy_all
Filter.destroy_all
require 'open-uri'

demo = User.create(username: "CoolPerson", email:"coolperson@you.com", password: "coolguy12")

# tanj_prof_pic = open("https://trt-seeds.s3.amazonaws.com/tanjiro.jpeg")
# demo.photo.attach(io: tanj_prof_pic, filename: 'tanjiro.jpeg')


fighting = Genre.create(name: "Fighting")
adventure = Genre.create(name: "Adventure")
mystery = Genre.create(name: "Mystery")
thriller = Genre.create(name: "thriller")
magic = Genre.create(name: "Magic")
lighthearted = Genre.create(name: "light-hearted")


# Filter.create(filter_id: 1, filtered_id: 1)
# Genre.create(name: "fighting")


crunchy = Service.create(name: "CRUNCHYROLL")

# start of this anime
aot = Anime.create(name: "Attack on Titan", description: "It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans;the story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother.",
service_id: 1, year: 2013)

aot_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/aot_img.jpeg")
aot_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/aot_background.jpeg")
aot.photo.attach(io: aot_img_file, filename: 'anime_images/aot_img.jpeg')
aot.background_photo.attach(io: aot_bkg_file, filename: "anime_background_images/anime_backgrounds/aot_background.jpeg")

aotEp1 = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )
# aotEp2 = Episode.create(name: "Erin do better", description: "A look into Zeke's past shows his struggle to become a Warrior; his plans to end the suffering of all Eldians stems from a chance friendship made in his youth.", anime_id: aot.id )
# aotEp3 = Episode.create(name: "Love Levi and his boots", description: "Armin and Mikasa speak with Eren, but are astounded by what he says; Levi considers feeding the Beast Titan to someone new, but Zeke has other plans.", anime_id: aot.id )
# aotEp4 = Episode.create(name: "Thou shall not beat Levi", description: "Gabi and Falco seek out a fellow Marleyan; the truth of what happened may shed some light.", anime_id: aot.id )
# aotEp5 = Episode.create(name: "Armin cries a lot", description: "While Hange and Pyxis piece together Zeke's true intentions, tension builds outside HQ, where Armin and Mikasa plead for permission to speak with Eren.", anime_id: aot.id )
# aotEp6 = Episode.create(name: "I would too", description: "Trapped on the world's most dangerous island, Falco and Gabi will do anything to survive; elsewhere, the public demands answers when it learns the savior of Paradis has been detained.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp1.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
# aotEp2.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
# aotEp3.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
# aotEp4.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
# aotEp5.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
# aotEp6.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp1.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# aotEp2.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# aotEp3.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# aotEp4.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# aotEp5.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# aotEp6.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
myhero = Anime.create(name: "My Hero Academia", description: "In a world populated with superhumans, the superhero-loving Izuku Midoriya is without power. However, after the Quirkless dreamer Izuku inherits the powers of the world's best superhero, All Might, his hopes of becoming the top hero are now possible. Once enrolled in the high school for heroes, U.A., Izuku soon discovers being a hero is much more complicated than it appears.",
service_id: 1, year: 2016)

myhero_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/my_hero.jpeg")
myhero_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/my_hero_background.jpeg")
myhero.photo.attach(io: myhero_img_file, filename: 'anime_images/my_hero.jpeg')
myhero.background_photo.attach(io: myhero_bkg_file, filename: "anime_background_images/anime_backgrounds/my_hero_background.jpeg")

myheroEp1 = Episode.create(name: "All of our Hero", description: "Some time ago, a younger Izuku Midoriya stands up to Katsuki Bakugo in order to defend another child from being bullied. Katsuki doesn't take 'Deku' seriously and mocks him for being Quirkless and attempting to play hero.", anime_id: myhero.id )
# myheroEp2 = Episode.create(name: "Just my Hero", description: "One day long ago in Qing Qing City, China, a luminescent baby was born with a unique power.", anime_id: myhero.id )
# myheroEp3 = Episode.create(name: "Maybe Your Hero?", description: "Near Tatooin Station, Katsuki's friends comment that he may have gone too far bullying Izuku this time in reference to Katsuki telling Izuku to take a leap off of the school's roof, to which he replies is Deku's fault, and he needs to learn how the world works.", anime_id: myhero.id )
# myheroEp4 = Episode.create(name: "We could be HEROOOESS", description: "Meanwhile, All Might and Izuku are talking on top of a building. Izuku asks the number one hero if someone who doesn't have a Quirk could also be a hero like him.", anime_id: myhero.id )
# myheroEp5 = Episode.create(name: "Unique Hero", description: "`Deku` and `Kacchan` grew up in the same neighborhood and have known each other since they were little kids. Katsuki always felt superior to Izuku, especially after developing his quirk.", anime_id: myhero.id )
# myheroEp6 = Episode.create(name: "Quirktastic", description: "No longer children, Izuku refuses to allow Katsuki to bully him any longer and shouts the defiant words that he won't back down any longer. Katsuki is interrupted by a message from Tenya, asking for a status update.", anime_id: myhero.id )

myhero_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/My+Hero+Academia+THE+MOVIE+World+Heroes'+Mission+-+Official+Teaser.mp4")
myheroEp1.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
# myheroEp2.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
# myheroEp3.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
# myheroEp4.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
# myheroEp5.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
# myheroEp6.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")

myhero_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/myhero_ep_img.png")
myheroEp1.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
# myheroEp2.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
# myheroEp3.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
# myheroEp4.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
# myheroEp5.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
# myheroEp6.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
# end of this anime

# start of this anime
blackclo = Anime.create(name: "Black Clover", description: "It follows the first adventures of Asta and the Black Bulls in the Clover Kingdom. After Asta receives a grimoire and joins the Black Bulls to become the new Wizard King, he explores a dungeon and meets Mars, a magic knight from the Diamond Kingdom.",
service_id: 1, year: 2017)

blackclo_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/blackclover.jpeg")
blackclo_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/blackclover_background.jpeg")
blackclo.photo.attach(io: blackclo_img_file, filename: 'blackclo_img_file')
blackclo.background_photo.attach(io: blackclo_bkg_file, filename: "anime_background_images/anime_backgrounds/blackclover_background.jpeg")

blackcloEp1 = Episode.create(name: "Go Asta!!", description: "Charmy keeps trying to eat up all of the food in the Heart Kingdom; Charmy has trained with the Spirit Guardians and is even more powerful; Yuno is contacted by Sister Lily and heads back to his home village of Hage.", anime_id: blackclo.id )
# blackcloEp2 = Episode.create(name: "Yuno yes King", description: "Yuno continues his battle against Gaderois, who brags about killing and defeating his comrades; Klaus fights a disciple who can use mist magic.", anime_id: blackclo.id )
# blackcloEp3 = Episode.create(name: "Yami the Man", description: "Mereoleona, a master of Mana Zone, agrees to help Yami train; Spade Kingdom's invasion continues.", anime_id: blackclo.id )
# blackcloEp4 = Episode.create(name: "Licht do too much", description: "The Magic Knight Entrance Exam comes again, marking one year since Asta and Noelle joined the Bulls; Asta is once again swarmed by the Anti-birds for having zero magic.", anime_id: blackclo.id )
# blackcloEp5 = Episode.create(name: "She Royalty but", description: "Asta and Noelle go to see the Magic Knight Entrance Exams with Yami; Asta remembers his own experience at the exams last year after seeing the hopefuls from this year.", anime_id: blackclo.id )
# blackcloEp6 = Episode.create(name: "On Demon Time", description: "The Captains are split into two teams; Yami, Jack, Nozel, and Kaiser against Charlotte, Fuegoleon, Dorothy, and Vangeance, aiming to destroy the other team's crystals, though Rill is absent for personal reasons.", anime_id: blackclo.id )

blackclo_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Yami's+Sword+++Black+Clover.mp4")
blackcloEp1.video.attach(io: blackclo_vid_file, filename: "videos/Yami's Sword Black Clover.mp4")

blackclo_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/black_clover.png")
blackcloEp1.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
# blackcloEp2.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
# blackcloEp3.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
# blackcloEp4.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
# blackcloEp5.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
# blackcloEp6.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
# end of this anime


# start of this anime
bleach = Anime.create(name: "Bleach", description: "Bleach follows the adventures of the hotheaded teenager Ichigo Kurosaki, who inherits his parents' destiny after he obtains the powers of a Soul Reaper—a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki.",
service_id: 1, year: 2004)

bleach_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/bleach.jpeg")
bleach_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/bleach_background.jpeg")
bleach.photo.attach(io: bleach_img_file, filename: 'anime_images/bleach.jpeg')
bleach.background_photo.attach(io: bleach_bkg_file, filename: "anime_background_images/anime_backgrounds/bleach_background.jpeg")

bleachEp1 = Episode.create(name: "Ichigo cool", description: "Sosuke Aizen suddenly appears in front of Shinji Hirako and the others; he draws his sword on Shinji, who is agonized and cannot move his body at will.", anime_id: bleach.id )
# bleachEp2 = Episode.create(name: "Bankaiiii!!!", description: "Shinji Hirako and his gang use a mask to look for Kensei Muguruma in the Ninth Division; Kensei attacks them.", anime_id: bleach.id )
# bleachEp3 = Episode.create(name: "Chad sheesh", description: "Kensei Muguruma's and Mashiro Kuna's Spiritual Pressure disappears; volunteers go searching.", anime_id: bleach.id )
# bleachEp4 = Episode.create(name: "Get ya bankai up", description: "Kisuke Urahara replaces the newly promoted Kirio Hikifune as captain of Squad Twelve; Hiyori Sarugaki can't hide her dissatisfaction.", anime_id: bleach.id )
# bleachEp5 = Episode.create(name: "Bald headed and pretty", description: "The fight between Rurichiyo and Kenryu hinders the revitalization of the Kusumiohji clan; worried about his people, Rurichiyo organizes a soccer tournament.", anime_id: bleach.id )
# bleachEp6 = Episode.create(name: "Hollowfied guys", description: "After the battle against Shusuke Amagai, the Kasumiohji clan tries to restructure; the family new leader Rurichiyo returns to the real world after a fight against Kenryu.", anime_id: bleach.id )

bleach_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Ichigo+-+New+Bankai.mp4")
bleachEp1.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
# bleachEp2.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
# bleachEp3.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
# bleachEp4.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
# bleachEp5.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
# bleachEp6.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")

bleach_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/bleach_ep_img.png")
bleachEp1.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
# bleachEp2.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
# bleachEp3.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
# bleachEp4.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
# bleachEp5.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
# bleachEp6.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
# end of this anime

# start of this anime
demon = Anime.create(name: "Demon Slayer", description: "It follows Tanjiro Kamado and his sister Nezuko Kamado as they seek a cure to Nezuko's demon curse. Tanjiro and Nezuko become entangled in the affairs of a secret society, known as the Demon Slayer Corps, that have been waging a secret war against demons for centuries.",
service_id: 1, year: 2021)

demon_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/demonslayer.jpeg")
demon_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/demon_slayer.jpeg")
demon.photo.attach(io: demon_img_file, filename: 'anime_images/demonslayer.jpeg')
demon.background_photo.attach(io: demon_bkg_file, filename: "anime_background_images/anime_backgrounds/demon_slayer.jpeg")

demonEp1 = Episode.create(name: "Michael Jackson why", description: "Muzan Kibutsuji gathers the lower ranks of the Twelve Kizuki; Tanjuro and the others receive a new mission.", anime_id: demon.id )
# demonEp2 = Episode.create(name: "Lightning Breathing", description: "Tanjiro and Inosuke struggle to recover as they are forced to endure a punishing training regimen.", anime_id: demon.id )
# demonEp3 = Episode.create(name: "Mist Breathing", description: "When Tanjuro's latest move leaves him immobilized, Giyu Tomioka comes to his aid and shows off a powerful ability; Shinobu Kocho puts her powerful insect breathing techniques on display.", anime_id: demon.id )
# demonEp4 = Episode.create(name: "Nezuko kun chan", description: "Tanjiro is violently ejected from his clash with the father spider demon and comes face to face with another demon who tortures her own kind.", anime_id: demon.id )
# demonEp5 = Episode.create(name: "Water breathing", description: "Zenitsu refuses to fight; Inosuke challenges Tanjiro to a fight; all of the human corpses are buried; the trio follows a Kasugai crow.", anime_id: demon.id )
# demonEp6 = Episode.create(name: "Love fire breathing dude", description: "A badly injured Tanjiro refuses to give up in is fight against Kyogai, who unleashes his powerful Blood Demon Art.", anime_id: demon.id )

demon_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Tanjirou+gently+kill+spider+demon+++Fifth+form+-+blessed+rain+after+the+drought+++kimetsu+no+yaiba.mp4")
demonEp1.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
# demonEp2.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
# demonEp3.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
# demonEp4.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
# demonEp5.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
# demonEp6.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")

demon_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/demon_ep_img.png")
demonEp1.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
# demonEp2.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
# demonEp3.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
# demonEp4.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
# demonEp5.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
# demonEp6.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
# end of this anime

# start of this anime
fate = Anime.create(name: "Fate Stay Night", description: "The plot focuses on a young mage named Shirou Emiya who becomes a warrior in a battle between 'Servants' known as the Holy Grail War. Through each route, Shirou bonds with a heroine and confronts different mages who participate in the war.",
service_id: 1, year: 2004)

fate_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/fate_stay.jpeg")
fate_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/fate_stay_background.jpeg")
fate.photo.attach(io: fate_img_file, filename: 'anime_images/fate_stay.jpeg')
fate.background_photo.attach(io: fate_bkg_file, filename: "anime_background_images/anime_backgrounds/fate_stay_background.jpeg")

fateEp1 = Episode.create(name: "Old Tales Everywhere", description: "In Fuyuki City, a duel between two Servants destroys the entire area and engulfs it in flames. Ten years later, Shirō Emiya, The sole survivor of the destruction, devotes his life to following the ideal of his late adoptive father Kiritsugu: to become a hero of justice", anime_id: fate.id )
# fateEp2 = Episode.create(name: "Joan the Arc?", description: "Saber refers to Shirō as her Master, which puzzles him, before she runs off to battle Lancer. She is wounded by Lancer's Noble Phantasm, from which she deduces his true identity, the ancient Irish hero Cú Chulainn.", anime_id: fate.id )
# fateEp3 = Episode.create(name: "Some guy from Egypt", description: "A fleeing Shirō is eventually cornered by Rin, who offers to spare his life if he gives her his Command Seals. However, he refuses, prompting Rin to try and kill him.", anime_id: fate.id )
# fateEp4 = Episode.create(name: "Saber toothed Lion", description: "Saber confronts Shirō over not summoning her against Rider.", anime_id: fate.id )
# fateEp5 = Episode.create(name: "Assasino", description: "Shinji defends his decision to set the barrier up over the school, explaining that it was a defensive measure against Rin.", anime_id: fate.id )
# fateEp6 = Episode.create(name: "Weirdo", description: "Shirō has his first training session with Saber but fares poorly against her in battle.", anime_id: fate.id )

fate_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Shirou+vs+Saber+Alter+but+Improved+(HD)+ll+Fate+Stay+Night+Heaven%E2%80%99s+Feel+iii+-+Spring+Song.mp4")
fateEp1.video.attach(io: fate_vid_file, filename: "videos/Shirou vs Saber Alter but Improved (HD) ll Fate Stay Night Heaven’s Feel iii - Spring Song.mp4")
# fateEp2.video.attach(io: fate_vid_file, filename: "videos/Shirou vs Saber Alter but Improved (HD) ll Fate Stay Night Heaven’s Feel iii - Spring Song.mp4")
# fateEp3.video.attach(io: fate_vid_file, filename: "videos/Shirou vs Saber Alter but Improved (HD) ll Fate Stay Night Heaven’s Feel iii - Spring Song.mp4")
# fateEp4.video.attach(io: fate_vid_file, filename: "videos/Shirou vs Saber Alter but Improved (HD) ll Fate Stay Night Heaven’s Feel iii - Spring Song.mp4")
# fateEp5.video.attach(io: fate_vid_file, filename: "videos/Shirou vs Saber Alter but Improved (HD) ll Fate Stay Night Heaven’s Feel iii - Spring Song.mp4")
# fateEp6.video.attach(io: fate_vid_file, filename: "videos/Shirou vs Saber Alter but Improved (HD) ll Fate Stay Night Heaven’s Feel iii - Spring Song.mp4")

fate_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/fate_ep_img.png")
fateEp1.photo.attach(io: fate_ep_file, filename: "video_thumbnails/fate_ep_img.png" )
# fateEp2.photo.attach(io: fate_ep_file, filename: "video_thumbnails/fate_ep_img.png" )
# fateEp3.photo.attach(io: fate_ep_file, filename: "video_thumbnails/fate_ep_img.png" )
# fateEp4.photo.attach(io: fate_ep_file, filename: "video_thumbnails/fate_ep_img.png" )
# fateEp5.photo.attach(io: fate_ep_file, filename: "video_thumbnails/fate_ep_img.png" )
# fateEp6.photo.attach(io: fate_ep_file, filename: "video_thumbnails/fate_ep_img.png" )
# end of this anime

# start of this anime
firef = Anime.create(name: "Fire Force", description: "In Year 198 of the Solar Era in Tokyo, Special Fire Force's are fighting against a phenomenon called Spontaneous Human Combustion where humans beings are turned into living infernos called “Infernals.” While the Infernals are First Generation cases of spontaneous human combustion, later generations possess the ability to manipulate flames while retaining human form. Shinra Kusakabe, a youth who gained the nickname Devil’s Footprints for his ability to ignite his feet at will, joins the Special Fire Force Company 8 which composes of other flames users as they work to extinguish any Infernals they encounter. As a faction that is creating Infernals appears, Shinra begins to uncover the truth behind a mysterious fire that caused the death of his family twelve years ago.",
service_id: 1, year: 2019)

firef_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/fire_force.jpeg")
firef_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/fire_force_background.jpeg")

firef.photo.attach(io: firef_img_file, filename: 'anime_images/fire_force.jpeg')
firef.background_photo.attach(io: firef_bkg_file, filename: "anime_background_images/anime_backgrounds/aot_background.jpeg")

firefEp1 = Episode.create(name: "Pyrokinetic", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: firef.id )
# firefEp2 = Episode.create(name: "Benimaru the Unbeatable", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: firef.id )
# firefEp3 = Episode.create(name: "Shinra", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: firef.id )
# firefEp4 = Episode.create(name: "Little brother", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: firef.id )
# firefEp5 = Episode.create(name: "Come Home Vulcan", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: firef.id )
# firefEp6 = Episode.create(name: "Captain of the 5th", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: firef.id )

firef_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Benimaru+vs+Demon+Infernal+++Fire+Force+Episode+14+%5B1080p%5D.mp4")
firefEp1.video.attach(io: firef_vid_file, filename: "videos/Benimaru vs Demon Infernal Fire Force Episode 14 [1080p].mp4")
# firefEp2.video.attach(io: firef_vid_file, filename: "videos/Benimaru vs Demon Infernal Fire Force Episode 14 [1080p].mp4")
# firefEp3.video.attach(io: firef_vid_file, filename: "videos/Benimaru vs Demon Infernal Fire Force Episode 14 [1080p].mp4")
# firefEp4.video.attach(io: firef_vid_file, filename: "videos/Benimaru vs Demon Infernal Fire Force Episode 14 [1080p].mp4")
# firefEp5.video.attach(io: firef_vid_file, filename: "videos/Benimaru vs Demon Infernal Fire Force Episode 14 [1080p].mp4")
# firefEp6.video.attach(io: firef_vid_file, filename: "videos/Benimaru vs Demon Infernal Fire Force Episode 14 [1080p].mp4")

firef_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/firefore_ep_img.png")
firefEp1.photo.attach(io: firef_ep_file, filename: "video_thumbnails/firefore_ep_img.png" )
# firefEp2.photo.attach(io: firef_ep_file, filename: "video_thumbnails/firefore_ep_img.png" )
# firefEp3.photo.attach(io: firef_ep_file, filename: "video_thumbnails/firefore_ep_img.png" )
# firefEp4.photo.attach(io: firef_ep_file, filename: "video_thumbnails/firefore_ep_img.png" )
# firefEp5.photo.attach(io: firef_ep_file, filename: "video_thumbnails/firefore_ep_img.png" )
# firefEp6.photo.attach(io: firef_ep_file, filename: "video_thumbnails/firefore_ep_img.png" )
# end of this anime

# start of this anime
food = Anime.create(name: "Food Wars", description: "Soma Yukihira enrolls in an elite culinary school to become a full-time chef and surpass his father's culinary skills. Meet Souma, he is the son of the owner of a small eatery in Japan.",
service_id: 1, year: 2015)

food_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/food_wars.jpeg")
food_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/food_wars_background.jpeg")
food.photo.attach(io: food_img_file, filename: 'anime_images/food_wars.jpeg')
food.background_photo.attach(io: food_bkg_file, filename: "anime_background_images/anime_backgrounds/food_wars_background.jpeg")

foodEp1 = Episode.create(name: "Umaiiiiiii", description: "Soma presents his dish's missing element, a white soup made from soy milk that turns the rice dish into a creamy porridge, enhancing the already existing flavours.", anime_id: food.id )
# foodEp2 = Episode.create(name: "Best Chef in the World", description: "Soma faces off against Akira Hayama and the finalists are chosen", anime_id: food.id )
# foodEp3 = Episode.create(name: "The Ultimate Gifting", description: "Group A is reeling as a judge continues to give zero points, and Ryo Kurokiba presents a dish that surprises everyone.", anime_id: food.id )
# foodEp4 = Episode.create(name: "Tentacles scenes are too much", description: "Hoshino's curry is judged, the Aldini brothers face off, and the judges almost forget Megumi.", anime_id: food.id )
# foodEp5 = Episode.create(name: "Food looks really good", description: "The Autumn Election preliminaries are underway as Megumi shocks everyone with a tricky ingredient.", anime_id: food.id )
# foodEp6 = Episode.create(name: "Unexpected Winner", description: "Soma and the others work to enhance their dishes before heading into the prelims.", anime_id: food.id )

food_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Soma's+Father+++Food+Wars!+The+Third+Plate.mp4")
foodEp1.video.attach(io: food_vid_file, filename: "videos/Soma's Father Food Wars! The Third Plate.mp4")
# foodEp2.video.attach(io: food_vid_file, filename: "videos/Soma's Father Food Wars! The Third Plate.mp4")
# foodEp3.video.attach(io: food_vid_file, filename: "videos/Soma's Father Food Wars! The Third Plate.mp4")
# foodEp4.video.attach(io: food_vid_file, filename: "videos/Soma's Father Food Wars! The Third Plate.mp4")
# foodEp5.video.attach(io: food_vid_file, filename: "videos/Soma's Father Food Wars! The Third Plate.mp4")
# foodEp6.video.attach(io: food_vid_file, filename: "videos/Soma's Father Food Wars! The Third Plate.mp4")

food_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/food_wars_img.png")
foodEp1.photo.attach(io: food_ep_file, filename: "video_thumbnails/food_wars_img.png" )
# foodEp2.photo.attach(io: food_ep_file, filename: "video_thumbnails/food_wars_img.png" )
# foodEp3.photo.attach(io: food_ep_file, filename: "video_thumbnails/food_wars_img.png" )
# foodEp4.photo.attach(io: food_ep_file, filename: "video_thumbnails/food_wars_img.png" )
# foodEp5.photo.attach(io: food_ep_file, filename: "video_thumbnails/food_wars_img.png" )
# foodEp6.photo.attach(io: food_ep_file, filename: "video_thumbnails/food_wars_img.png" )
# end of this anime

# start of this anime
godhs = Anime.create(name: "God of HighSchool", description: " A tournament known as God of High School pits South Korea's high schoolers against each other in a martial-arts tournament, with the winners receiving the chance to have a wish granted.",
service_id: 1, year:  2020)

godhs_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/god_of_highschool.jpeg")
godhs_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/god_of_highschool_background.jpeg")
godhs.photo.attach(io: godhs_img_file, filename: 'anime_images/god_of_highschool.jpeg')
godhs.background_photo.attach(io: godhs_bkg_file, filename: "anime_background_images/anime_backgrounds/god_of_highschool_background.jpeg")

godhsEp1 = Episode.create(name: "Fight Fight Fight", description: "Three criminals attempt to blackmail Park Mujin, a politician of the Korean National Assembly, only for the criminals to be murdered by supernatural means that flattens the island they are standing on. Mujin begins making preparations for the upcoming God of High School Martial Arts Tournament.", anime_id: godhs.id )
# godhsEp2 = Episode.create(name: "Hardest Punch", description: "Mira is approached by Seongjin, a martial artist and businessman who asks her to marry him, promising he can make her sword style world famous.", anime_id: godhs.id )
# godhsEp3 = Episode.create(name: "Boys will be Boys", description: "In his youth Daewi shared a violent rivalry with Seungtae that developed into friendship", anime_id: godhs.id )
# godhsEp4 = Episode.create(name: "The Judges Fight NHZ", description: "Mori’s missing grandfather, Jin Taejin, refuses to join a mysterious cult, so they summon their God to destroy him.", anime_id: godhs.id )
# godhsEp5 = Episode.create(name: "NHZ fights the Judges?", description: "At Nationals Mori and his friends face the North Chungcheong regional champions.", anime_id: godhs.id )
# godhsEp6 = Episode.create(name: "The Ultimate Wish", description: "With Daewi suspended for having interfered in Taek’s match they will automatically lose unless Mira and Mori both win, except Mori is missing.", anime_id: godhs.id )

godhs_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Training+++The+God+of+High+School.mp4")
godhsEp1.video.attach(io: godhs_vid_file, filename: "videos/Training The God of High School.mp4")
# godhsEp2.video.attach(io: godhs_vid_file, filename: "videos/Training The God of High School.mp4")
# godhsEp3.video.attach(io: godhs_vid_file, filename: "videos/Training The God of High School.mp4")
# godhsEp4.video.attach(io: godhs_vid_file, filename: "videos/Training The God of High School.mp4")
# godhsEp5.video.attach(io: godhs_vid_file, filename: "videos/Training The God of High School.mp4")
# godhsEp6.video.attach(io: godhs_vid_file, filename: "videos/Training The God of High School.mp4")

godhs_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/god_of_ep_img.png")
godhsEp1.photo.attach(io: godhs_ep_file, filename: "video_thumbnails/god_of_ep_img.png" )
# godhsEp2.photo.attach(io: godhs_ep_file, filename: "video_thumbnails/god_of_ep_img.png" )
# godhsEp3.photo.attach(io: godhs_ep_file, filename: "video_thumbnails/god_of_ep_img.png" )
# godhsEp4.photo.attach(io: godhs_ep_file, filename: "video_thumbnails/god_of_ep_img.png" )
# godhsEp5.photo.attach(io: godhs_ep_file, filename: "video_thumbnails/god_of_ep_img.png" )
# godhsEp6.photo.attach(io: godhs_ep_file, filename: "video_thumbnails/god_of_ep_img.png" )
# end of this anime

# start of this anime
haikyuu = Anime.create(name: "Haikyu!!", description: "It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans;the story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother.",
service_id: 1, year: 2017)

haikyuu_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/haikyuu.jpeg")
haikyuu_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/haikyu_background.jpeg")
haikyuu.photo.attach(io: haikyuu_img_file, filename: 'anime_images/haikyuu.jpeg')
haikyuu.background_photo.attach(io: haikyuu_bkg_file, filename: "anime_background_images/anime_backgrounds/haikyu_background.jpeg")

haikyuuEp1 = Episode.create(name: "Hit It", description: "Hinata is inspired by the Small Giant playing volleyball on TV.", anime_id: haikyuu.id )
# haikyuuEp2 = Episode.create(name: "The Great Spike", description: "Hinata arrives at Karasuno High School, determined to join the volleyball club and defeat Kageyama.", anime_id: haikyuu.id )
# haikyuuEp3 = Episode.create(name: "Diabolical Serve", description: "As the days pass, Hinata slowly improves, but his relationship with Kageyama isn't going anywhere until they encounter Tsukishima and Yamaguchi, the other first years applying for the club.", anime_id: haikyuu.id )
# haikyuuEp4 = Episode.create(name: "The Great Kagayama", description: "Oikawa suddenly shows up for the practice match. He is revealed to be Aoba Johsai's captain and official setter.", anime_id: haikyuu.id )
# haikyuuEp5 = Episode.create(name: "Wohoooooo", description: "While practicing, Kageyama's shocked when a stranger runs into the gym and perfectly receives his serve.", anime_id: haikyuu.id )
# haikyuuEp6 = Episode.create(name: "Dont Hit the Net!!", description: "Keishin Ukai agrees to Karasuno's coach after he learns of the upcoming practice match, but only until the practice match is finished.", anime_id: haikyuu.id )

haikyuu_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Oikawa%E2%80%99s+DIABOLICAL+SERVE+!!!!!!.mp4")
haikyuuEp1.video.attach(io: haikyuu_vid_file, filename: "videos/Oikawa’s DIABOLICAL SERVE !!!!!!.mp4")
# haikyuuEp2.video.attach(io: aot_vid_file, filename: "videos/Oikawa’s DIABOLICAL SERVE !!!!!!.mp4")
# haikyuuEp3.video.attach(io: aot_vid_file, filename: "videos/Oikawa’s DIABOLICAL SERVE !!!!!!.mp4")
# haikyuuEp4.video.attach(io: aot_vid_file, filename: "videos/Oikawa’s DIABOLICAL SERVE !!!!!!.mp4")
# haikyuuEp5.video.attach(io: aot_vid_file, filename: "videos/Oikawa’s DIABOLICAL SERVE !!!!!!.mp4")
# haikyuuEp6.video.attach(io: aot_vid_file, filename: "videos/Oikawa’s DIABOLICAL SERVE !!!!!!.mp4")

haikyuu_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/haikyu_ep_img.png")
haikyuuEp1.photo.attach(io: haikyuu_ep_file, filename: "video_thumbnails/haikyu_ep_img.png" )
# haikyuuEp2.photo.attach(io: haikyuu_ep_file, filename: "video_thumbnails/haikyu_ep_img.png" )
# haikyuuEp3.photo.attach(io: haikyuu_ep_file, filename: "video_thumbnails/haikyu_ep_img.png" )
# haikyuuEp4.photo.attach(io: haikyuu_ep_file, filename: "video_thumbnails/haikyu_ep_img.png" )
# haikyuuEp5.photo.attach(io: haikyuu_ep_file, filename: "video_thumbnails/haikyu_ep_img.png" )
# haikyuuEp6.photo.attach(io: haikyuu_ep_file, filename: "video_thumbnails/haikyu_ep_img.png" )
# end of this anime

# start of this anime
hotd = Anime.create(name: "Highschool of the Dead", description: "A student witnesses a zombie breakout in his own high school and gets along with a weapon-maniac, the girl who was his crush, a master fighter and the school nurse. Together, they make the best of every situation and do everything to survive.",
service_id: 1, year:2010)

hotd_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/highschool_of_the_dead.png")
hotd_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/highschool_of_the_dead.png")
hotd.photo.attach(io: hotd_img_file, filename: 'anime_images/highschool_of_the_dead.png')
hotd.background_photo.attach(io: hotd_bkg_file, filename: "anime_background_images/anime_backgrounds/hotd_background.jpeg")

hotdEp1 = Episode.create(name: "The Outbreak", description: "At the beginning of the semester, Takashi Komuro has a social separation with his childhood friend Rei Miyamoto.", anime_id: hotd.id )
# hotdEp2 = Episode.create(name: "Yall Really Anime this", description: "The survivors are shocked to learn that the zombie pandemic has spread worldwide.", anime_id: hotd.id )
# hotdEp3 = Episode.create(name: "These are HighSchoolers", description: "A recapitulation of the past events are shown from Takashi's perspective.", anime_id: hotd.id )
# hotdEp4 = Episode.create(name: "A bit creepy", description: "At Kansai International Airport, Rika Minami and her squad from the Special Assault Team helps in the evacuation of civilians by clearing zombies at the runway.", anime_id: hotd.id )
# hotdEp5 = Episode.create(name: "Zombies Ahh", description: "The zombies manage to infiltrate Air Force One.", anime_id: hotd.id )
# hotdEp6 = Episode.create(name: "But No Fr", description: "Takashi and Saeko acquire an amphibious vehicle to help evade the zombies and set up on a sand bank in the middle of the river.", anime_id: hotd.id )

hotd_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Highschool+of+the+Dead+Opening+1.mp4")
hotdEp1.video.attach(io: hotd_vid_file, filename: "videos/Highschool of the Dead Opening 1.mp4")
# hotdEp2.video.attach(io: hotd_vid_file, filename: "videos/Highschool of the Dead Opening 1.mp4")
# hotdEp3.video.attach(io: hotd_vid_file, filename: "videos/Highschool of the Dead Opening 1.mp4")
# hotdEp4.video.attach(io: hotd_vid_file, filename: "videos/Highschool of the Dead Opening 1.mp4")
# hotdEp5.video.attach(io: hotd_vid_file, filename: "videos/Highschool of the Dead Opening 1.mp4")
# hotdEp6.video.attach(io: hotd_vid_file, filename: "videos/Highschool of the Dead Opening 1.mp4")

hotd_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Highschool_ep_img.png")
hotdEp1.photo.attach(io: hotd_ep_file, filename: "video_thumbnails/Highschool_ep_img.png" )
# hotdEp2.photo.attach(io: hotd_ep_file, filename: "video_thumbnails/Highschool_ep_img.png" )
# hotdEp3.photo.attach(io: hotd_ep_file, filename: "video_thumbnails/Highschool_ep_img.png" )
# hotdEp4.photo.attach(io: hotd_ep_file, filename: "video_thumbnails/Highschool_ep_img.png" )
# hotdEp5.photo.attach(io: hotd_ep_file, filename: "video_thumbnails/Highschool_ep_img.png" )
# hotdEp6.photo.attach(io: hotd_ep_file, filename: "video_thumbnails/Highschool_ep_img.png" )
# end of this anime

# start of this anime
hunter = Anime.create(name: "Hunter x Hunter", description: "The story follows a young boy named Gon Freecss, who was told all his life that both his parents were dead. ... A few days later, Gon and Killua achieve their objective and begin playing Greed Island, an extremely rare and expensive video game with Nen-like properties following some clues about Ging's whereabouts.",
service_id: 1, year: 2011)

hunter_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/hunter_hunter.jpeg")
hunter_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/hunter_hunter_background.jpeg")
hunter.photo.attach(io: hunter_img_file, filename: 'anime_images/hunter_hunter.jpeg')
hunter.background_photo.attach(io: hunter_bkg_file, filename: "anime_background_images/anime_backgrounds/hunter_background.jpeg")

hunterEp1 = Episode.create(name: "Gon Freecs", description: "Gon and Ging share a moment together atop the World Tree as they look back at the past and toward the future.", anime_id: hunter.id )
# hunterEp2 = Episode.create(name: "Gin Backwards?", description: "Gon has a heart-to-heart talk with Kite; Gon says farewell to his friends to join his father.", anime_id: hunter.id )
# hunterEp3 = Episode.create(name: "Greed Island", description: "Gon's regrets dampen a heartfelt reunion; Pariston renounces his victory to give the chairmanship to someone else; Killua makes a decision about what to do with Alluka's powers.", anime_id: hunter.id )
# hunterEp4 = Episode.create(name: "Nen", description: "The elections come down to the wire as a healthy Gon arrives; family members unite.", anime_id: hunter.id )
# hunterEp5 = Episode.create(name: "Hisoka Chan", description: "The voting narrows to eight candidates; Illumi catches Killua and attempts to pry Alluka's secrets out of him; the hunters seeking Illumi run afoul of Hisoka.", anime_id: hunter.id )
# hunterEp6 = Episode.create(name: "Kurapika's Eyes", description: "Hisoka stands between the butler assassins and Killua; Illumi begins to manipulate others to do his bidding, becoming a wanted fugitive among the Hunter Association.", anime_id: hunter.id )

hunter_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Hisoka+finds+out+Gon+is+at+the+verge+of+death.mp4")
hunterEp1.video.attach(io: hunter_vid_file, filename: "videos/Hisoka finds out Gon is at the verge of death.mp4")
# hunterEp2.video.attach(io: hunter_vid_file, filename: "videos/Hisoka finds out Gon is at the verge of death.mp4")
# hunterEp3.video.attach(io: hunter_vid_file, filename: "videos/Hisoka finds out Gon is at the verge of death.mp4")
# hunterEp4.video.attach(io: hunter_vid_file, filename: "videos/Hisoka finds out Gon is at the verge of death.mp4")
# hunterEp5.video.attach(io: hunter_vid_file, filename: "videos/Hisoka finds out Gon is at the verge of death.mp4")
# hunterEp6.video.attach(io: hunter_vid_file, filename: "videos/Hisoka finds out Gon is at the verge of death.mp4")

hunter_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/hunter_ep_img.png")
hunterEp1.photo.attach(io: hunter_ep_file, filename: "video_thumbnails/hunter_ep_img.png" )
# hunterEp2.photo.attach(io: hunter_ep_file, filename: "video_thumbnails/hunter_ep_img.png" )
# hunterEp3.photo.attach(io: hunter_ep_file, filename: "video_thumbnails/hunter_ep_img.png" )
# hunterEp4.photo.attach(io: hunter_ep_file, filename: "video_thumbnails/hunter_ep_img.png" )
# hunterEp5.photo.attach(io: hunter_ep_file, filename: "video_thumbnails/hunter_ep_img.png" )
# hunterEp6.photo.attach(io: hunter_ep_file, filename: "video_thumbnails/hunter_ep_img.png" )
# end of this anime

# start of this anime
jujutsu = Anime.create(name: "Jujutsu Kaisen", description: "The story follows high school student Yuji Itadori as he joins a secret organization of Jujutsu Sorcerers in order to kill a powerful Curse named Ryomen Sukuna, of whom Yuji becomes the host.",
service_id: 1, year: 2021)

jujutsu_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/jujutsu.jpeg")
jujutsu_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/jujutsu_background.jpeg")
jujutsu.photo.attach(io: jujutsu_img_file, filename: 'anime_images/jujutsu.jpeg')
jujutsu.background_photo.attach(io: jujutsu_bkg_file, filename: "anime_background_images/anime_backgrounds/jujutsu_background.jpeg")

jujutsuEp1 = Episode.create(name: "Sukuna finds a Host", description: "Yuji Itadori is a high school student with incredible athleticism, who prefers his school's Occult Club over sports.", anime_id: jujutsu.id )
# jujutsuEp2 = Episode.create(name: "A host find Sukuna?", description: "Megumi's teacher, Satoru Gojo, arrives, after hearing about Sukuna's finger. After learning Yuji ate the finger, Satoru has him give Sukuna control for a brief period.", anime_id: jujutsu.id )
# jujutsuEp3 = Episode.create(name: "Gojoro stupid OP", description: "Satoru brings them to an abandoned building near a cemetery that is occupied by Curses as a field test for Nobara. Yuji and Nobara enter the building and split up to search for the Curse.", anime_id: jujutsu.id )
# jujutsuEp4 = Episode.create(name: "Perfect Domain", description: "Yuji, Megumi, and Nobara investigate the appearance of a `womb`. Kiyotaka Ijichi, the assistant director at Jujutsu High, informs Yuji that they believe that the womb could transform into a special-grade cursed spirit.", anime_id: jujutsu.id )
# jujutsuEp5 = Episode.create(name: "Imperfect Domain", description: "Yoshino Junpei skips school to go to a movie theater, but then he witnesses the classmates who bullied him getting their faces transfigured and dying.", anime_id: jujutsu.id )
# jujutsuEp6 = Episode.create(name: "Getcha Spirit Energy up", description: "Mahito deftly uses Yoshino's admiration toward him to make him fight Itadori.", anime_id: jujutsu.id )

jujutsu_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Gojo+vs+Sukuna+++JUJUTSU+KAISEN.mp4")
jujutsuEp1.video.attach(io: jujutsu_vid_file, filename: "videos/Gojo vs Sukuna JUJUTSU KAISEN.mp4")
# jujutsuEp2.video.attach(io: jujutsu_vid_file, filename: "videos/Gojo vs Sukuna JUJUTSU KAISEN.mp4")
# jujutsuEp3.video.attach(io: jujutsu_vid_file, filename: "videos/Gojo vs Sukuna JUJUTSU KAISEN.mp4")
# jujutsuEp4.video.attach(io: jujutsu_vid_file, filename: "videos/Gojo vs Sukuna JUJUTSU KAISEN.mp4")
# jujutsuEp5.video.attach(io: jujutsu_vid_file, filename: "videos/Gojo vs Sukuna JUJUTSU KAISEN.mp4")
# jujutsuEp6.video.attach(io: jujutsu_vid_file, filename: "videos/Gojo vs Sukuna JUJUTSU KAISEN.mp4")

jujutsu_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/jujutsi_ep_img.png")
jujutsuEp1.photo.attach(io: jujutsu_ep_file, filename: "video_thumbnails/jujutsi_ep_img.png" )
# jujutsuEp2.photo.attach(io: jujutsu_ep_file, filename: "video_thumbnails/jujutsi_ep_img.png" )
# jujutsuEp3.photo.attach(io: jujutsu_ep_file, filename: "video_thumbnails/jujutsi_ep_img.png" )
# jujutsuEp4.photo.attach(io: jujutsu_ep_file, filename: "video_thumbnails/jujutsi_ep_img.png" )
# jujutsuEp5.photo.attach(io: jujutsu_ep_file, filename: "video_thumbnails/jujutsi_ep_img.png" )
# jujutsuEp6.photo.attach(io: jujutsu_ep_file, filename: "video_thumbnails/jujutsi_ep_img.png" )
# end of this anime

# start of this anime
kabaneri = Anime.create(name: "Kabaneri of the Iron Fortress", description: "A large group of survivors seek shelter while travelling on a train after their station was attacked by aggressive, undead creatures called Kabane. As the world is in the middle of an industrial revolution, a monster appears that cannot be defeated unless its heart, which is protected by a layer of iron, is pierced.",
service_id: 1, year: 2016)

kabaneri_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/kabaneri.jpeg")
kabaneri_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/kabaneri_background.jpeg")
kabaneri.photo.attach(io: kabaneri_img_file, filename: 'anime_images/kabaneri_img.jpeg')
kabaneri.background_photo.attach(io: kabaneri_bkg_file, filename: "anime_background_images/anime_backgrounds/kabaneri_background.jpeg")

kabaneriEp1 = Episode.create(name: "Strong Zombies", description: "Biba's plan, Mumei's Nue transformation, and the influx of Kabane are too much for Kongokaku.", anime_id: kabaneri.id )
# kabaneriEp2 = Episode.create(name: "Main Character Gives", description: "Biba is reunited with his father, Mumei's Nue stands ready, and Ikoma loses his confidence.", anime_id: kabaneri.id )
# kabaneriEp3 = Episode.create(name: "Kab No Neri", description: "Biba and his troops are now in control of the Hayajiro, and he makes Ayamean an offer.", anime_id: kabaneri.id )
# kabaneriEp4 = Episode.create(name: "Neri No Kab", description: "The Shogunate closes off the path to Kongokaku, and Biba seeks a meeting to assassinate someone.", anime_id: kabaneri.id )
# kabaneriEp5 = Episode.create(name: "The Fortress of Kab", description: "The people praise Biba as a hero; Ikoma does not trust him because he turned Mumei into a Kabaneri.", anime_id: kabaneri.id )
# kabaneriEp6 = Episode.create(name: "Yes Kab", description: "The Kotetsujyo faces a giant cluster of Kabane, while Ikoma and Mumei are at an abandoned station.", anime_id: kabaneri.id )

kabaneri_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Ikoma+Becomes+Kabaneri+-+Kabaneri+of+the+Iron+Fortress.mp4")
kabaneriEp1.video.attach(io: kabaneri_vid_file, filename: "videos/Ikoma Becomes Kabaneri - Kabaneri of the Iron Fortress.mp4")
# kabaneriEp2.video.attach(io: kabaneri_vid_file, filename: "videos/Ikoma Becomes Kabaneri - Kabaneri of the Iron Fortress.mp4")
# kabaneriEp3.video.attach(io: kabaneri_vid_file, filename: "videos/Ikoma Becomes Kabaneri - Kabaneri of the Iron Fortress.mp4")
# kabaneriEp4.video.attach(io: kabaneri_vid_file, filename: "videos/Ikoma Becomes Kabaneri - Kabaneri of the Iron Fortress.mp4")
# kabaneriEp5.video.attach(io: kabaneri_vid_file, filename: "videos/Ikoma Becomes Kabaneri - Kabaneri of the Iron Fortress.mp4")
# kabaneriEp6.video.attach(io: kabaneri_vid_file, filename: "videos/Ikoma Becomes Kabaneri - Kabaneri of the Iron Fortress.mp4")

kabaneri_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/kabaneri_ep_img.png")
kabaneriEp1.photo.attach(io: kabaneri_ep_file, filename: "video_thumbnails/kabaneri_ep_img.png" )
# kabaneriEp2.photo.attach(io: kabaneri_ep_file, filename: "video_thumbnails/kabaneri_ep_img.png" )
# kabaneriEp3.photo.attach(io: kabaneri_ep_file, filename: "video_thumbnails/kabaneri_ep_img.png" )
# kabaneriEp4.photo.attach(io: kabaneri_ep_file, filename: "video_thumbnails/kabaneri_ep_img.png" )
# kabaneriEp5.photo.attach(io: kabaneri_ep_file, filename: "video_thumbnails/kabaneri_ep_img.png" )
# kabaneriEp6.photo.attach(io: kabaneri_ep_file, filename: "video_thumbnails/kabaneri_ep_img.png" )
# end of this anime

# start of this anime
magi = Anime.create(name: "Magi", description: "The Labyrinth of Magic depicts a fantastic middle-age world, where slavery is common and people are born to live and die unequal. Suddenly, there appear mysterious tall towers called 'Dungeons'.",
service_id: 1, year: 2013)

magi_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/magi.jpeg")
magi_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/magi_background.jpeg")
magi.photo.attach(io: magi_img_file, filename: 'anime_images/magi.jpeg')
magi.background_photo.attach(io: magi_bkg_file, filename: "anime_background_images/anime_backgrounds/magi_background.jpeg")

magiEp1 = Episode.create(name: "Its Magic", description: "The magicians rescue the wounded in Magnostadt. Sheherazade sacrifices herself to invigorate the weary King Vessels and all dungeon captures join forces to attack.", anime_id: magi.id )
# magiEp2 = Episode.create(name: "Ultimate Magic Glyph", description: "Even the combined efforts of Alibaba and Kouen are not enough to destroy the medium's barrier. Kouen's brothers join the battle as Gyokuen watches in awe.", anime_id: magi.id )
# magiEp3 = Episode.create(name: "She got Red Hair", description: "Aladdin asks for Kouen's help using his Djinn along with Alibaba's and Kouha's to convince him that the corrupt god Il Irah must be stopped.", anime_id: magi.id )
# magiEp4 = Episode.create(name: "Nice Head Piece", description: "Mu equips his Djinn and attempts to kill Aladdin and take over Magnostadt. Sheherazade appears and requests a private meeting with Aladdin, Alibaba and Titus.", anime_id: magi.id )
# magiEp5 = Episode.create(name: "All the Djinn", description: "The forces of Reim, lead by Mu, attack Magnostadt when Mogamett and his forces refuse to surrender.", anime_id: magi.id )
# magiEp6 = Episode.create(name: "Djinn Mustard", description: "Aladdin and Titus rescue Marga and try to protect the civilians of the fifth District. They are brought before Mogamett.", anime_id: magi.id )

magi_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Sinbad%2C+Jafar+and+Masrur+vs+Ithnan.mp4")
magiEp1.video.attach(io: magi_vid_file, filename: "videos/Sinbad, Jafar and Masrur vs Ithnan.mp4")
# magiEp2.video.attach(io: magi_vid_file, filename: "videos/Sinbad, Jafar and Masrur vs Ithnan.mp4")
# magiEp3.video.attach(io: magi_vid_file, filename: "videos/Sinbad, Jafar and Masrur vs Ithnan.mp4")
# magiEp4.video.attach(io: magi_vid_file, filename: "videos/Sinbad, Jafar and Masrur vs Ithnan.mp4")
# magiEp5.video.attach(io: magi_vid_file, filename: "videos/Sinbad, Jafar and Masrur vs Ithnan.mp4")
# magiEp6.video.attach(io: magi_vid_file, filename: "videos/Sinbad, Jafar and Masrur vs Ithnan.mp4")

magi_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/magi_ep_img.png")
magiEp1.photo.attach(io: magi_ep_file, filename: "video_thumbnails/magi_ep_img.png" )
# magiEp2.photo.attach(io: magi_ep_file, filename: "video_thumbnails/magi_ep_img.png" )
# magiEp3.photo.attach(io: magi_ep_file, filename: "video_thumbnails/magi_ep_img.png" )
# magiEp4.photo.attach(io: magi_ep_file, filename: "video_thumbnails/magi_ep_img.png" )
# magiEp5.photo.attach(io: magi_ep_file, filename: "video_thumbnails/magi_ep_img.png" )
# magiEp6.photo.attach(io: magi_ep_file, filename: "video_thumbnails/magi_ep_img.png" )
# end of this anime

# start of this anime
naruto = Anime.create(name: "Naruto", description: "Naruto is an orphan who has a dangerous fox-like entity known as Kurama the Nine-Tailed Fox sealed within his body by his father, the Fourth Hokage Minato Namikaze, the leader of Konoha's ninja force, at the cost of his own life and that of his wife, Kushina Uzumaki.",
service_id: 1, year: 2007)

naruto_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/naruto.jpeg")
naruto_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/naruto_background.jpeg")
naruto.photo.attach(io: naruto_img_file, filename: 'anime_images/naruto.jpeg')
naruto.background_photo.attach(io: naruto_bkg_file, filename: "anime_background_images/anime_backgrounds/naruto_background.jpeg")

narutoEp1 = Episode.create(name: "The Nine Tails", description: "Twelve years ago, a vicious tailed beast known as the Nine-Tails attacked the shinobi village of Konohagakure. Many shinobi fought the beast, but it defeated and killed all those that stood in front of it.", anime_id: naruto.id )
# narutoEp2 = Episode.create(name: "2 Finger Death Poke", description: "In the present, Naruto Uzumaki is a prankster who is constantly causing trouble throughout Konohagakure, most recently having placed graffiti all over the Hokage Rock.", anime_id: naruto.id )
# narutoEp3 = Episode.create(name: "Naruto Uzamaki", description: "Despite claiming to be a talented shinobi who would someday become Hokage, Naruto is incapable of performing basic techniques such as the Clone Technique.", anime_id: naruto.id )
# narutoEp4 = Episode.create(name: "Forbidden Scroll", description: "After successfully stealing the scroll, Naruto is caught by another instructor, Iruka Umino, who realised that Naruto had been tricked by Mizuki.", anime_id: naruto.id )
# narutoEp5 = Episode.create(name: "The Anbu", description: "He goes on to explain that Iruka, whose parents were killed by the Nine-Tails, must hate him the most.", anime_id: naruto.id )
# narutoEp6 = Episode.create(name: "Sharingan", description: "Amazed by the complicated technique that Naruto has learned, Iruka officially makes Naruto a ninja by giving him his own forehead protector, and says that he may one day have the potential to become the Hokage.", anime_id: naruto.id )

naruto_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/%E2%98%AFNaruto+vs+Sasuke%E2%98%AFBeggin'%E2%98%AF+(AMV+++EDIT).mp4")
narutoEp1.video.attach(io: naruto_vid_file, filename: "videos/☯Naruto vs Sasuke☯Beggin'☯ (AMV EDIT).mp4")
# narutoEp2.video.attach(io: naruto_vid_file, filename: "videos/☯Naruto vs Sasuke☯Beggin'☯ (AMV EDIT).mp4")
# narutoEp3.video.attach(io: naruto_vid_file, filename: "videos/☯Naruto vs Sasuke☯Beggin'☯ (AMV EDIT).mp4")
# narutoEp4.video.attach(io: naruto_vid_file, filename: "videos/☯Naruto vs Sasuke☯Beggin'☯ (AMV EDIT).mp4")
# narutoEp5.video.attach(io: naruto_vid_file, filename: "videos/☯Naruto vs Sasuke☯Beggin'☯ (AMV EDIT).mp4")
# narutoEp6.video.attach(io: naruto_vid_file, filename: "videos/☯Naruto vs Sasuke☯Beggin'☯ (AMV EDIT).mp4")

naruto_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/naruto_ep_img.png")
narutoEp1.photo.attach(io: naruto_ep_file, filename: "video_thumbnails/naruto_ep_img.png" )
# narutoEp2.photo.attach(io: naruto_ep_file, filename: "video_thumbnails/naruto_ep_img.png" )
# narutoEp3.photo.attach(io: naruto_ep_file, filename: "video_thumbnails/naruto_ep_img.png" )
# narutoEp4.photo.attach(io: naruto_ep_file, filename: "video_thumbnails/naruto_ep_img.png" )
# narutoEp5.photo.attach(io: naruto_ep_file, filename: "video_thumbnails/naruto_ep_img.png" )
# narutoEp6.photo.attach(io: naruto_ep_file, filename: "video_thumbnails/naruto_ep_img.png" )
# end of this anime

# start of this anime
punch = Anime.create(name: "One Punch Man", description: "The seemingly ordinary and unimpressive Saitama has a rather unique hobby: being a hero. In order to pursue his childhood dream, he trained relentlessly for three years—and lost all of his hair in the process. Now, Saitama is incredibly powerful, so much so that no enemy is able to defeat him in battle. In fact, all it takes to defeat evildoers with just one punch has led to an unexpected problem—he is no longer able to enjoy the thrill of battling and has become quite bored.",
service_id: 1, year: 2013)

punch_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/one_punch_man.jpeg")
punch_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/one_punch_background.jpeg")
punch.photo.attach(io: punch_img_file, filename: 'anime_images/one_punch_man.jpeg')
punch.background_photo.attach(io: punch_bkg_file, filename: "anime_background_images/anime_backgrounds/one_punch_background.jpeg")

punchEp1 = Episode.create(name: "All it Takes", description: "A monster appears in A-City and begins to wreak havoc as he defeats Lightning Max and Smile Man.", anime_id: punch.id )
# punchEp2 = Episode.create(name: "Bald Head Big Fist", description: "A reporter tells what has happened and then the report was suddenly cut out and a bald man named Saitama decides to leave.", anime_id: punch.id )
# punchEp3 = Episode.create(name: "Bald Ronald Mcdonald", description: "The monster introduces itself as Vaccine Man and claims to have come into existence to eradicate mankind due to their pollution of Earth.", anime_id: punch.id )
# punchEp4 = Episode.create(name: "Genos Sama", description: "Vaccine Man then transforms himself into a giant monstrosity and Saitama destroys him with a single punch.", anime_id: punch.id )
# punchEp5 = Episode.create(name: "What are the Gloves for", description: "Saitama promptly encounters the child, who is revealed to have drawn nipples on Crablante with a permanent marker while he was asleep.", anime_id: punch.id )
# punchEp6 = Episode.create(name: "Rise to Number 1", description: "As present-day Saitama reminisces about the events while shopping, a colossal man attacks the city.", anime_id: punch.id )

punch_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/One+Punch+Man+-+Blade+Breakfast.mp4")
punchEp1.video.attach(io: punch_vid_file, filename: "videos/One Punch Man - Blade Breakfast.mp4")
# punchEp2.video.attach(io: punch_vid_file, filename: "videos/One Punch Man - Blade Breakfast.mp4")
# punchEp3.video.attach(io: punch_vid_file, filename: "videos/One Punch Man - Blade Breakfast.mp4")
# punchEp4.video.attach(io: punch_vid_file, filename: "videos/One Punch Man - Blade Breakfast.mp4")
# punchEp5.video.attach(io: punch_vid_file, filename: "videos/One Punch Man - Blade Breakfast.mp4")
# punchEp6.video.attach(io: punch_vid_file, filename: "videos/One Punch Man - Blade Breakfast.mp4")

punch_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/one_punch_ep_img.png")
punchEp1.photo.attach(io: punch_ep_file, filename: "video_thumbnails/one_punch_ep_img.png" )
# punchEp2.photo.attach(io: punch_ep_file, filename: "video_thumbnails/one_punch_ep_img.png" )
# punchEp3.photo.attach(io: punch_ep_file, filename: "video_thumbnails/one_punch_ep_img.png" )
# punchEp4.photo.attach(io: punch_ep_file, filename: "video_thumbnails/one_punch_ep_img.png" )
# punchEp5.photo.attach(io: punch_ep_file, filename: "video_thumbnails/one_punch_ep_img.png" )
# punchEp6.photo.attach(io: punch_ep_file, filename: "video_thumbnails/one_punch_ep_img.png" )
# end of this anime

# start of this anime
spider = Anime.create(name: "So i'm a Spider so What", description: "In a world where the battle between Hero and Demon Lord repeated itself time and time again, an enormous space-time spell misfired and hit a certain Japanese high school class on Earth, killing everyone in it. However, guided by what seemed to be a miracle, the students were all reincarnated into that other world. While a handful was fortunate enough to become royalty, nobles, and other kinds of influential people, one girl was not so lucky. Being reborn as a spider monster of the weakest kind in a dungeon filled with vicious beasts, she is forced to experience extreme hardship.",
service_id: 1, year: 2018)

spider_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/so_im_spider.jpeg")
spider_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/spider_background.jpeg")
spider.photo.attach(io: spider_img_file, filename: 'anime_images/so_im_spider.jpeg')
spider.background_photo.attach(io: spider_bkg_file, filename: "anime_background_images/anime_backgrounds/spider_background.jpeg")

spiderEp1 = Episode.create(name: "Im a Spider And?", description: "I, the protagonist, was just an ordinary high school girl, but suddenly I was reincarnated as a spider monster in a fantasy world.", anime_id: spider.id )
# spiderEp2 = Episode.create(name: "My Posterior is Big And?", description: "Not only that, but I awakened in a dungeon filled with vicious monsters.", anime_id: spider.id )
# spiderEp3 = Episode.create(name: "What So", description: "So begins the labyrinth survival story of a girl with incredible mental strength living as one of the lowest-ranked beasts!", anime_id: spider.id )
# spiderEp4 = Episode.create(name: "So What", description: "Something mysterious happened and a full class find themselves reincarnated in a new, video-game like world. How they will survive to this? Will they come back? Will they find what happened?", anime_id: spider.id )
# spiderEp5 = Episode.create(name: "Charlotte Could Never", description: "She will face new threats, learning new things and starting to figure out her best suitable way to fight.", anime_id: spider.id )
# spiderEp6 = Episode.create(name: "She was a Pig Anyway", description: "After leveling up our little spider starts enjoying all the new characteristics she gets, while the other guys reembodied in human beings have a practice magic lesson that ended up in a survival moment.", anime_id: spider.id )

spider_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/White+++So+I'm+a+Spider%2C+So+What.mp4")
spiderEp1.video.attach(io: spider_vid_file, filename: "videos/White So I'm a Spider, So What.mp4")
# spiderEp2.video.attach(io: spider_vid_file, filename: "videos/White So I'm a Spider, So What.mp4")
# spiderEp3.video.attach(io: spider_vid_file, filename: "videos/White So I'm a Spider, So What.mp4")
# spiderEp4.video.attach(io: spider_vid_file, filename: "videos/White So I'm a Spider, So What.mp4")
# spiderEp5.video.attach(io: spider_vid_file, filename: "videos/White So I'm a Spider, So What.mp4")
# spiderEp6.video.attach(io: spider_vid_file, filename: "videos/White So I'm a Spider, So What.mp4")

spider_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/spider_ep_img.png")
spiderEp1.photo.attach(io: spider_ep_file, filename: "video_thumbnails/spider_ep_img.png" )
# spiderEp2.photo.attach(io: spider_ep_file, filename: "video_thumbnails/spider_ep_img.png" )
# spiderEp3.photo.attach(io: spider_ep_file, filename: "video_thumbnails/spider_ep_img.png" )
# spiderEp4.photo.attach(io: spider_ep_file, filename: "video_thumbnails/spider_ep_img.png" )
# spiderEp5.photo.attach(io: spider_ep_file, filename: "video_thumbnails/spider_ep_img.png" )
# spiderEp6.photo.attach(io: spider_ep_file, filename: "video_thumbnails/spider_ep_img.png" )
# end of this anime

# start of this anime
eternity = Anime.create(name: "To Your Eternity", description: "It, a mysterious immortal being, is sent to the Earth with no emotions nor identity. However, It is able to take the shape of those around that have a strong impetus.",
service_id: 1, year: 2021)

eternity_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/to_your_eternity.jpeg")
eternity_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/to_your_eternity_background.jpeg")
eternity.photo.attach(io: eternity_img_file, filename: 'anime_images/to_your_eternity.jpeg')
eternity.background_photo.attach(io: eternity_bkg_file, filename: "anime_background_images/anime_backgrounds/to_your_eternity_background.jpeg")

eternityEp1 = Episode.create(name: "The Orb", description: "A mysterious being casts a small orb unto the world. The orb first takes the form of a rock that spends an unmeasured amount of time lying there. One day, an injured white wolf collapses on top of the rock.", anime_id: eternity.id )
# eternityEp2 = Episode.create(name: "Really Sad Part", description: "The orb now wanders south in the form of the boy it met earlier. Not knowing how to act as a human, the boy dies multiple times from starvation, injury, and being eaten by a bear, but keeps regenerating itself each time.", anime_id: eternity.id )
# eternityEp3 = Episode.create(name: "Stimulation", description: "Parona uses a hidden blade to cut her bonds free and escape as a giant bear mauls the retinue watching her, but tumbles over a cliff while escaping the bear herself.", anime_id: eternity.id )
# eternityEp4 = Episode.create(name: "Resourceful Orb", description: "Hayase escorts March, Parona, and the transforming wolf-boy (who March named Fushi) on a long ride to Yanome. Hayase lets them eat at various food stands, but soon slips them each sleeping drugs.", anime_id: eternity.id )
# eternityEp5 = Episode.create(name: "Hateful Tradition", description: "Parona escapes with March, Fushi and the elder but is chased by the villagers from Yanome.", anime_id: eternity.id )
# eternityEp6 = Episode.create(name: "Really Really Sad Part", description: "After March dies, Parona gives the news about the death to March's parents. With Yanome soldiers wanting to capture Fushi, Parona convinces him to part ways and escape for sake of them both.", anime_id: eternity.id )


eternity_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/To+Your+Eternity+++OFFICIAL+TRAILER+2.mp4")
eternityEp1.video.attach(io: eternity_vid_file, filename: "videos/To Your Eternity OFFICIAL TRAILER 2.mp4")
# eternityEp2.video.attach(io: eternity_vid_file, filename: "videos/To Your Eternity OFFICIAL TRAILER 2.mp4")
# eternityEp3.video.attach(io: eternity_vid_file, filename: "videos/To Your Eternity OFFICIAL TRAILER 2.mp4")
# eternityEp4.video.attach(io: eternity_vid_file, filename: "videos/To Your Eternity OFFICIAL TRAILER 2.mp4")
# eternityEp5.video.attach(io: eternity_vid_file, filename: "videos/To Your Eternity OFFICIAL TRAILER 2.mp4")
# eternityEp6.video.attach(io: eternity_vid_file, filename: "videos/To Your Eternity OFFICIAL TRAILER 2.mp4")


eternity_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/to_you_eternity_ep_img.png")
eternityEp1.photo.attach(io: eternity_ep_file, filename: "video_thumbnails/to_you_eternity_ep_img.png" )
# eternityEp2.photo.attach(io: eternity_ep_file, filename: "video_thumbnails/to_you_eternity_ep_img.png" )
# eternityEp3.photo.attach(io: eternity_ep_file, filename: "video_thumbnails/to_you_eternity_ep_img.png" )
# eternityEp4.photo.attach(io: eternity_ep_file, filename: "video_thumbnails/to_you_eternity_ep_img.png" )
# eternityEp5.photo.attach(io: eternity_ep_file, filename: "video_thumbnails/to_you_eternity_ep_img.png" )
# eternityEp6.photo.attach(io: eternity_ep_file, filename: "video_thumbnails/to_you_eternity_ep_img.png" )
# end of this anime

# start of this anime
world = Anime.create(name: "World Trigger", description: "When a gate to another world suddenly opens on Earth, Mikado City is invaded by strange creatures known as 'Neighbors,' malicious beings impervious to traditional weaponry. In response to their arrival, an organization called the Border Defense Agency has been established to combat the Neighbor menace through special weapons called 'Triggers.' Even though several years have passed after the gate first opened, Neighbors are still a threat and members of Border remain on guard to ensure the safety of the planet.",
service_id: 1, year: 2014)

world_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/world_trigger.jpeg")
world_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/world_trigger_background.jpeg")
world.photo.attach(io: world_img_file, filename: 'anime_images/world_trigger.jpeg')
world.background_photo.attach(io: world_bkg_file, filename: "anime_background_images/anime_backgrounds/world_trigger_background.jpeg")

worldEp1 = Episode.create(name: "Kuga knows Best", description: "In Mikado City, Yūma Kuga transfers to the Third Mikado City Middle School, where he meets Osamu Mikumo and gets in trouble with the class' bullies.", anime_id: world.id )
# worldEp2 = Episode.create(name: "I know you're Lying", description: "After Yūma's battle with the Neighbor, Miwa Unit investigates the site and is surprised to know the Neighbor wasn't defeated by one of Border's agents.", anime_id: world.id )
# worldEp3 = Episode.create(name: "Neighbor", description: "Despite Yūma's warning that he will die if he attacks such powerful Trion soldiers, Osamu rushes in to save his fellow students from the Mole Mods.", anime_id: world.id )
# worldEp4 = Episode.create(name: "Black Trigger", description: "For using his Trigger outside of Training, Osamu is told to report to Headquarters later that day.", anime_id: world.id )
# worldEp5 = Episode.create(name: "Do your best Chika", description: "Kitora strikes a fatal blow to the Ilgar attacking Mikado City, but activates its self-destruct ability.", anime_id: world.id )
# worldEp6 = Episode.create(name: "A Neighbor joins Border??", description: "After Osamu is expelled from Border, Jin meets him, and is introduced to Yūma, discovering Yūma is a Neighbor.", anime_id: world.id )

world_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/No+Walls+No+Wires+++World+Trigger+2nd+Season.mp4")
worldEp1.video.attach(io: world_vid_file, filename: "videos/No Walls No Wires World Trigger 2nd Season.mp4")
# worldEp2.video.attach(io: world_vid_file, filename: "videos/No Walls No Wires World Trigger 2nd Season.mp4")
# worldEp3.video.attach(io: world_vid_file, filename: "videos/No Walls No Wires World Trigger 2nd Season.mp4")
# worldEp4.video.attach(io: world_vid_file, filename: "videos/No Walls No Wires World Trigger 2nd Season.mp4")
# worldEp5.video.attach(io: world_vid_file, filename: "videos/No Walls No Wires World Trigger 2nd Season.mp4")
# worldEp6.video.attach(io: world_vid_file, filename: "videos/No Walls No Wires World Trigger 2nd Season.mp4")

world_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/world_tri_ep_img.png")
worldEp1.photo.attach(io: world_ep_file, filename: "video_thumbnails/world_tri_ep_img.png" )
# worldEp2.photo.attach(io: world_ep_file, filename: "video_thumbnails/world_tri_ep_img.png" )
# worldEp3.photo.attach(io: world_ep_file, filename: "video_thumbnails/world_tri_ep_img.png" )
# worldEp4.photo.attach(io: world_ep_file, filename: "video_thumbnails/world_tri_ep_img.png" )
# worldEp5.photo.attach(io: world_ep_file, filename: "video_thumbnails/world_tri_ep_img.png" )
# worldEp6.photo.attach(io: world_ep_file, filename: "video_thumbnails/world_tri_ep_img.png" )
# end of this anime

# start of genre
Filter.create(filter_id: fighting.id,filtered_id: aot.id )
Filter.create(filter_id: fighting.id,filtered_id: myhero.id )
Filter.create(filter_id: fighting.id,filtered_id: blackclo.id )
Filter.create(filter_id: fighting.id,filtered_id: bleach.id )
Filter.create(filter_id: fighting.id,filtered_id: demon.id )
Filter.create(filter_id: fighting.id,filtered_id: fate.id )
Filter.create(filter_id: fighting.id,filtered_id: firef.id )
Filter.create(filter_id: fighting.id,filtered_id: godhs.id )
Filter.create(filter_id: fighting.id,filtered_id: hotd.id )
Filter.create(filter_id: fighting.id,filtered_id: hunter.id )
Filter.create(filter_id: fighting.id,filtered_id: jujutsu.id )
Filter.create(filter_id: fighting.id,filtered_id: kabaneri.id )
Filter.create(filter_id: fighting.id,filtered_id: magi.id )
Filter.create(filter_id: fighting.id,filtered_id: naruto.id )
Filter.create(filter_id: fighting.id,filtered_id: punch.id )
Filter.create(filter_id: fighting.id,filtered_id: spider.id )
Filter.create(filter_id: fighting.id,filtered_id: world.id )
# end of genre

# start of genre
Filter.create(filter_id: adventure.id,filtered_id: aot.id )
Filter.create(filter_id: adventure.id,filtered_id: blackclo.id )
Filter.create(filter_id: adventure.id,filtered_id: bleach.id )
Filter.create(filter_id: adventure.id,filtered_id: demon.id )
Filter.create(filter_id: adventure.id,filtered_id: firef.id )
Filter.create(filter_id: adventure.id,filtered_id: hunter.id )
Filter.create(filter_id: adventure.id,filtered_id: kabaneri.id )
Filter.create(filter_id: adventure.id,filtered_id: magi.id )
Filter.create(filter_id: adventure.id,filtered_id: spider.id )
Filter.create(filter_id: adventure.id,filtered_id: eternity.id )
# end of genre

# start of genre
Filter.create(filter_id: mystery.id,filtered_id: aot.id )
Filter.create(filter_id: mystery.id,filtered_id: firef.id )
Filter.create(filter_id: mystery.id,filtered_id: spider.id )
Filter.create(filter_id: mystery.id,filtered_id: world.id )
Filter.create(filter_id: mystery.id,filtered_id: eternity.id )
# end of genre


# start of genre
Filter.create(filter_id: thriller.id,filtered_id: aot.id )
Filter.create(filter_id: thriller.id,filtered_id: blackclo.id )
Filter.create(filter_id: thriller.id,filtered_id: bleach.id )
Filter.create(filter_id: thriller.id,filtered_id: fate.id )
Filter.create(filter_id: thriller.id,filtered_id: firef.id )
Filter.create(filter_id: thriller.id,filtered_id: godhs.id )
Filter.create(filter_id: thriller.id,filtered_id: kabaneri.id )
# end of genre

# start of genre
Filter.create(filter_id: magic.id,filtered_id: blackclo.id )
Filter.create(filter_id: magic.id,filtered_id: fate.id )
Filter.create(filter_id: magic.id,filtered_id: jujutsu.id )
Filter.create(filter_id: magic.id,filtered_id: magi.id )
Filter.create(filter_id: magic.id,filtered_id: spider.id )
Filter.create(filter_id: magic.id,filtered_id: eternity.id )
# end of genre

# start of genre
Filter.create(filter_id: lighthearted.id,filtered_id: myhero.id )
Filter.create(filter_id: lighthearted.id,filtered_id: godhs.id )
Filter.create(filter_id: lighthearted.id,filtered_id: hunter.id )
Filter.create(filter_id: lighthearted.id,filtered_id: magi.id )
Filter.create(filter_id: lighthearted.id,filtered_id: food.id )
Filter.create(filter_id: lighthearted.id,filtered_id: haikyuu.id )
Filter.create(filter_id: lighthearted.id,filtered_id: punch.id )
# end of genre



