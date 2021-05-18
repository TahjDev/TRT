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

require 'open-uri'

demo = User.create(username: "CoolPerson", email:"coolperson@you.com", password: "coolguy12")

# tanj_prof_pic = open("https://trt-seeds.s3.amazonaws.com/tanjiro.jpeg")
# demo.photo.attach(io: tanj_prof_pic, filename: 'tanjiro.jpeg')



# Filter.create(filter_id: 1, filtered_id: 1)
# Genre.create(name: "Shonen")
# Episode.create(name: "Shonen", description: "")

crunchy = Service.create(name: "CRUNCHYROLL")

# start of this anime
aot = Anime.create(name: "Attack on Titan", description: "It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans;the story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother.",
service_id: 1, year: 2013)

aot_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/aot_img.jpeg")
aot_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/aot_background.jpeg")
aot.photo.attach(io: aot_img_file, filename: 'anime_images/aot_img.jpeg')
aot.background_photo.attach(io: aot_bkg_file, filename: "anime_background_images/anime_backgrounds/aot_background.jpeg")

aotEp1 = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )
aotEp2 = Episode.create(name: "Erin do better", description: "A look into Zeke's past shows his struggle to become a Warrior; his plans to end the suffering of all Eldians stems from a chance friendship made in his youth.", anime_id: aot.id )
aotEp3 = Episode.create(name: "Love Levi and his boots", description: "Armin and Mikasa speak with Eren, but are astounded by what he says; Levi considers feeding the Beast Titan to someone new, but Zeke has other plans.", anime_id: aot.id )
aotEp4 = Episode.create(name: "Thou shall not beat Levi", description: "Gabi and Falco seek out a fellow Marleyan; the truth of what happened may shed some light.", anime_id: aot.id )
aotEp5 = Episode.create(name: "Armin cries a lot", description: "While Hange and Pyxis piece together Zeke's true intentions, tension builds outside HQ, where Armin and Mikasa plead for permission to speak with Eren.", anime_id: aot.id )
aotEp6 = Episode.create(name: "I would too", description: "Trapped on the world's most dangerous island, Falco and Gabi will do anything to survive; elsewhere, the public demands answers when it learns the savior of Paradis has been detained.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp1.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
aotEp2.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
aotEp3.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
aotEp4.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
aotEp5.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")
aotEp6.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp1.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
aotEp2.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
aotEp3.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
aotEp4.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
aotEp5.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
aotEp6.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
myhero = Anime.create(name: "My Hero Academia", description: "In a world populated with superhumans, the superhero-loving Izuku Midoriya is without power. However, after the Quirkless dreamer Izuku inherits the powers of the world's best superhero, All Might, his hopes of becoming the top hero are now possible. Once enrolled in the high school for heroes, U.A., Izuku soon discovers being a hero is much more complicated than it appears.",
service_id: 1, year: 2016)

myhero_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/my_hero.jpeg")
myhero_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/my_hero_background.jpeg")
myhero.photo.attach(io: myhero_img_file, filename: 'anime_images/my_hero.jpeg')
myhero.background_photo.attach(io: myhero_bkg_file, filename: "anime_background_images/anime_backgrounds/my_hero_background.jpeg")

myheroEp1 = Episode.create(name: "All of our Hero", description: "Some time ago, a younger Izuku Midoriya stands up to Katsuki Bakugo in order to defend another child from being bullied. Katsuki doesn't take 'Deku' seriously and mocks him for being Quirkless and attempting to play hero.", anime_id: myhero.id )
myheroEp2 = Episode.create(name: "Just my Hero", description: "One day long ago in Qing Qing City, China, a luminescent baby was born with a unique power.", anime_id: myhero.id )
myheroEp3 = Episode.create(name: "Maybe Your Hero?", description: "Near Tatooin Station, Katsuki's friends comment that he may have gone too far bullying Izuku this time in reference to Katsuki telling Izuku to take a leap off of the school's roof, to which he replies is Deku's fault, and he needs to learn how the world works.", anime_id: myhero.id )
myheroEp4 = Episode.create(name: "We could be HEROOOESS", description: "Meanwhile, All Might and Izuku are talking on top of a building. Izuku asks the number one hero if someone who doesn't have a Quirk could also be a hero like him.", anime_id: myhero.id )
myheroEp5 = Episode.create(name: "Unique Hero", description: "`Deku` and `Kacchan` grew up in the same neighborhood and have known each other since they were little kids. Katsuki always felt superior to Izuku, especially after developing his quirk.", anime_id: myhero.id )
myheroEp6 = Episode.create(name: "Quirktastic", description: "No longer children, Izuku refuses to allow Katsuki to bully him any longer and shouts the defiant words that he won't back down any longer. Katsuki is interrupted by a message from Tenya, asking for a status update.", anime_id: myhero.id )

myhero_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/My+Hero+Academia+THE+MOVIE+World+Heroes'+Mission+-+Official+Teaser.mp4")
myheroEp1.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
myheroEp2.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
myheroEp3.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
myheroEp4.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
myheroEp5.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")
myheroEp6.video.attach(io: myhero_vid_file, filename: "video_thumbnails/myhero_ep_img.png")

myhero_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/myhero_ep_img.png")
myheroEp1.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
myheroEp2.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
myheroEp3.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
myheroEp4.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
myheroEp5.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
myheroEp6.photo.attach(io: myhero_ep_file, filename: "video_thumbnails/myhero_ep_img.png" )
# end of this anime

# start of this anime
blackclo = Anime.create(name: "Black Clover", description: "It follows the first adventures of Asta and the Black Bulls in the Clover Kingdom. After Asta receives a grimoire and joins the Black Bulls to become the new Wizard King, he explores a dungeon and meets Mars, a magic knight from the Diamond Kingdom.",
service_id: 1, year: 2017)

blackclo_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/blackclover.jpeg")
blackclo_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/blackclover_background.jpeg")
blackclo.photo.attach(io: blackclo_img_file, filename: 'blackclo_img_file')
blackclo.background_photo.attach(io: blackclo_bkg_file, filename: "anime_background_images/anime_backgrounds/blackclover_background.jpeg")

blackcloEp1 = Episode.create(name: "Go Asta!!", description: "Charmy keeps trying to eat up all of the food in the Heart Kingdom; Charmy has trained with the Spirit Guardians and is even more powerful; Yuno is contacted by Sister Lily and heads back to his home village of Hage.", anime_id: blackclo.id )
blackcloEp2 = Episode.create(name: "Yuno yes King", description: "Yuno continues his battle against Gaderois, who brags about killing and defeating his comrades; Klaus fights a disciple who can use mist magic.", anime_id: blackclo.id )
blackcloEp3 = Episode.create(name: "Yami the Man", description: "Mereoleona, a master of Mana Zone, agrees to help Yami train; Spade Kingdom's invasion continues.", anime_id: blackclo.id )
blackcloEp4 = Episode.create(name: "Licht do too much", description: "The Magic Knight Entrance Exam comes again, marking one year since Asta and Noelle joined the Bulls; Asta is once again swarmed by the Anti-birds for having zero magic.", anime_id: blackclo.id )
blackcloEp5 = Episode.create(name: "She Royalty but", description: "Asta and Noelle go to see the Magic Knight Entrance Exams with Yami; Asta remembers his own experience at the exams last year after seeing the hopefuls from this year.", anime_id: blackclo.id )
blackcloEp6 = Episode.create(name: "On Demon Time", description: "The Captains are split into two teams; Yami, Jack, Nozel, and Kaiser against Charlotte, Fuegoleon, Dorothy, and Vangeance, aiming to destroy the other team's crystals, though Rill is absent for personal reasons.", anime_id: blackclo.id )

blackclo_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Yami's+Sword+++Black+Clover.mp4")
blackcloEp1.video.attach(io: blackclo_vid_file, filename: "videos/Yami's Sword Black Clover.mp4")

blackclo_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/black_clover.png")
blackcloEp1.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
blackcloEp2.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
blackcloEp3.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
blackcloEp4.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
blackcloEp5.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
blackcloEp6.photo.attach(io: blackclo_ep_file, filename: "video_thumbnails/black_clover.png" )
# end of this anime


# start of this anime
bleach = Anime.create(name: "Bleach", description: "Bleach follows the adventures of the hotheaded teenager Ichigo Kurosaki, who inherits his parents' destiny after he obtains the powers of a Soul Reaper—a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki.",
service_id: 1, year: 2004)

bleach_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/bleach.jpeg")
bleach_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/bleach_background.jpeg")
bleach.photo.attach(io: bleach_img_file, filename: 'anime_images/bleach.jpeg')
bleach.background_photo.attach(io: bleach_bkg_file, filename: "anime_background_images/anime_backgrounds/bleach_background.jpeg")

bleachEp1 = Episode.create(name: "Ichigo cool", description: "Sosuke Aizen suddenly appears in front of Shinji Hirako and the others; he draws his sword on Shinji, who is agonized and cannot move his body at will.", anime_id: bleach.id )
bleachEp2 = Episode.create(name: "Bankaiiii!!!", description: "Shinji Hirako and his gang use a mask to look for Kensei Muguruma in the Ninth Division; Kensei attacks them.", anime_id: bleach.id )
bleachEp3 = Episode.create(name: "Chad sheesh", description: "Kensei Muguruma's and Mashiro Kuna's Spiritual Pressure disappears; volunteers go searching.", anime_id: bleach.id )
bleachEp4 = Episode.create(name: "Get ya bankai up", description: "Kisuke Urahara replaces the newly promoted Kirio Hikifune as captain of Squad Twelve; Hiyori Sarugaki can't hide her dissatisfaction.", anime_id: bleach.id )
bleachEp5 = Episode.create(name: "Bald headed and pretty", description: "The fight between Rurichiyo and Kenryu hinders the revitalization of the Kusumiohji clan; worried about his people, Rurichiyo organizes a soccer tournament.", anime_id: bleach.id )
bleachEp6 = Episode.create(name: "Hollowfied guys", description: "After the battle against Shusuke Amagai, the Kasumiohji clan tries to restructure; the family new leader Rurichiyo returns to the real world after a fight against Kenryu.", anime_id: bleach.id )

bleach_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Ichigo+-+New+Bankai.mp4")
bleachEp1.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
bleachEp2.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
bleachEp3.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
bleachEp4.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
bleachEp5.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")
bleachEp6.video.attach(io: bleach_vid_file, filename: "videos/Ichigo - New Bankai.mp4")

bleach_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/bleach_ep_img.png")
bleachEp1.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
bleachEp2.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
bleachEp3.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
bleachEp4.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
bleachEp5.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
bleachEp6.photo.attach(io: bleach_ep_file, filename: "video_thumbnails/bleach_ep_img.png" )
# end of this anime

# start of this anime
demon = Anime.create(name: "Demon Slayer", description: "It follows Tanjiro Kamado and his sister Nezuko Kamado as they seek a cure to Nezuko's demon curse. Tanjiro and Nezuko become entangled in the affairs of a secret society, known as the Demon Slayer Corps, that have been waging a secret war against demons for centuries.",
service_id: 1, year: 2021)

demon_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/demonslayer.jpeg")
demon_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/demon_slayer.jpeg")
demon.photo.attach(io: demon_img_file, filename: 'anime_images/demonslayer.jpeg')
demon.background_photo.attach(io: demon_bkg_file, filename: "anime_background_images/anime_backgrounds/demon_slayer.jpeg")

demonEp1 = Episode.create(name: "Michael Jackson why", description: "Muzan Kibutsuji gathers the lower ranks of the Twelve Kizuki; Tanjuro and the others receive a new mission.", anime_id: demon.id )
demonEp2 = Episode.create(name: "Lightning Breathing", description: "Tanjiro and Inosuke struggle to recover as they are forced to endure a punishing training regimen.", anime_id: demon.id )
demonEp3 = Episode.create(name: "Mist Breathing", description: "When Tanjuro's latest move leaves him immobilized, Giyu Tomioka comes to his aid and shows off a powerful ability; Shinobu Kocho puts her powerful insect breathing techniques on display.", anime_id: demon.id )
demonEp4 = Episode.create(name: "Nezuko kun chan", description: "Tanjiro is violently ejected from his clash with the father spider demon and comes face to face with another demon who tortures her own kind.", anime_id: demon.id )
demonEp5 = Episode.create(name: "Water breathing", description: "Zenitsu refuses to fight; Inosuke challenges Tanjiro to a fight; all of the human corpses are buried; the trio follows a Kasugai crow.", anime_id: demon.id )
demonEp6 = Episode.create(name: "Love fire breathing dude", description: "A badly injured Tanjiro refuses to give up in is fight against Kyogai, who unleashes his powerful Blood Demon Art.", anime_id: demon.id )

demon_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Tanjirou+gently+kill+spider+demon+++Fifth+form+-+blessed+rain+after+the+drought+++kimetsu+no+yaiba.mp4")
demonEp1.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
demonEp2.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
demonEp3.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
demonEp4.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
demonEp5.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")
demonEp6.video.attach(io: demon_vid_file, filename: "videos/Tanjirou gently kill spider demon Fifth form - blessed rain after the drought kimetsu no yaiba.mp4")

demon_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/demon_ep_img.png")
demonEp1.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
demonEp2.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
demonEp3.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
demonEp4.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
demonEp5.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
demonEp6.photo.attach(io: demon_ep_file, filename: "video_thumbnails/demon_ep_img.png" )
# end of this anime

# start of this anime
fate = Anime.create(name: "Fate Stay Night", description: "The plot focuses on a young mage named Shirou Emiya who becomes a warrior in a battle between 'Servants' known as the Holy Grail War. Through each route, Shirou bonds with a heroine and confronts different mages who participate in the war.",
service_id: 1, year: 2004)

fate_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/fate_stay.jpeg")
fate_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/fate_stay_background.jpeg")
fate.photo.attach(io: fate_img_file, filename: 'anime_images/fate_stay.jpeg')
fate.background_photo.attach(io: fate_bkg_file, filename: "anime_background_images/anime_backgrounds/fate_stay_background.jpeg")

fateEp1 = Episode.create(name: "Old Tales Everywhere", description: "In Fuyuki City, a duel between two Servants destroys the entire area and engulfs it in flames. Ten years later, Shirō Emiya, The sole survivor of the destruction, devotes his life to following the ideal of his late adoptive father Kiritsugu: to become a hero of justice", anime_id: fate.id )
fateEp2 = Episode.create(name: "Joan the Arc?", description: "Saber refers to Shirō as her Master, which puzzles him, before she runs off to battle Lancer. She is wounded by Lancer's Noble Phantasm, from which she deduces his true identity, the ancient Irish hero Cú Chulainn." anime_id: fate.id )
fateEp3 = Episode.create(name: "Some guy from Egypt", description: "A fleeing Shirō is eventually cornered by Rin, who offers to spare his life if he gives her his Command Seals. However, he refuses, prompting Rin to try and kill him." anime_id: fate.id )
fateEp4 = Episode.create(name: "Saber toothed Lion", description: "Saber confronts Shirō over not summoning her against Rider.", anime_id: fate.id )
fateEp5 = Episode.create(name: "Assasino", description: "Shinji defends his decision to set the barrier up over the school, explaining that it was a defensive measure against Rin.", anime_id: fate.id )
fateEp6 = Episode.create(name: "Weirdo", description: "Shirō has his first training session with Saber but fares poorly against her in battle.", anime_id: fate.id )

fate_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Shirou+vs+Saber+Alter+but+Improved+(HD)+ll+Fate+Stay+Night+Heaven%E2%80%99s+Feel+iii+-+Spring+Song.mp4")
fateEp1.video.attach(io: fate_vid_file, filename: "video_thumbnails/fate_ep_img.png")
fateEp2.video.attach(io: fate_vid_file, filename: "video_thumbnails/fate_ep_img.png")
fateEp3.video.attach(io: fate_vid_file, filename: "video_thumbnails/fate_ep_img.png")
fateEp4.video.attach(io: fate_vid_file, filename: "video_thumbnails/fate_ep_img.png")
fateEp5.video.attach(io: fate_vid_file, filename: "video_thumbnails/fate_ep_img.png")
fateEp6.video.attach(io: fate_vid_file, filename: "video_thumbnails/fate_ep_img.png")

fate_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/fate_ep_img.png")
fateEp1.photo.attach(io: fate_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
fateEp2.photo.attach(io: fate_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
fateEp3.photo.attach(io: fate_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
fateEp4.photo.attach(io: fate_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
fateEp5.photo.attach(io: fate_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
fateEp6.photo.attach(io: fate_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
firef = Anime.create(name: "Fire Force", description: "In Year 198 of the Solar Era in Tokyo, Special Fire Force's are fighting against a phenomenon called Spontaneous Human Combustion where humans beings are turned into living infernos called “Infernals.” While the Infernals are First Generation cases of spontaneous human combustion, later generations possess the ability to manipulate flames while retaining human form. Shinra Kusakabe, a youth who gained the nickname Devil’s Footprints for his ability to ignite his feet at will, joins the Special Fire Force Company 8 which composes of other flames users as they work to extinguish any Infernals they encounter. As a faction that is creating Infernals appears, Shinra begins to uncover the truth behind a mysterious fire that caused the death of his family twelve years ago.",
service_id: 1, year: 2019)

firef_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/fire_force.jpeg")
firef_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/fire_force_background.jpeg")

firef.photo.attach(io: firef_img_file, filename: 'anime_images/fire_force.jpeg')
firef.background_photo.attach(io: firef_bkg_file, filename: "anime_background_images/anime_backgrounds/aot_background.jpeg")

firefEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
food = Anime.create(name: "Food Wars", description: "Soma Yukihira enrolls in an elite culinary school to become a full-time chef and surpass his father's culinary skills. Meet Souma, he is the son of the owner of a small eatery in Japan.",
service_id: 1, year: 2015)

food_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/food_wars.jpeg")
food_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/food_wars_background.jpeg")
food.photo.attach(io: food_img_file, filename: 'anime_images/food_wars.jpeg')
food.background_photo.attach(io: food_bkg_file, filename: "anime_background_images/anime_backgrounds/food_wars_background.jpeg")

foodEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
godhs = Anime.create(name: "God of HighSchool", description: " A tournament known as God of High School pits South Korea's high schoolers against each other in a martial-arts tournament, with the winners receiving the chance to have a wish granted.",
service_id: 1, year:  2020)

godhs_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/god_of_highschool.jpeg")
godhs_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/god_of_highschool_background.jpeg")
godhs.photo.attach(io: godhs_img_file, filename: 'anime_images/god_of_highschool.jpeg')
godhs.background_photo.attach(io: godhs_bkg_file, filename: "anime_background_images/anime_backgrounds/god_of_highschool_background.jpeg")

godhsEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
haikyuu = Anime.create(name: "Haikyu!!", description: "It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans;the story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother.",
service_id: 1, year: 2017)

haikyuu_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/haikyuu.jpeg")
haikyuu_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/haikyu_background.jpeg")
haikyuu.photo.attach(io: haikyuu_img_file, filename: 'anime_images/haikyuu.jpeg')
haikyuu.background_photo.attach(io: haikyuu_bkg_file, filename: "anime_background_images/anime_backgrounds/haikyu_background.jpeg")

haikyuuEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: haikyuu.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
hotd = Anime.create(name: "Highschool of the Dead", description: "A student witnesses a zombie breakout in his own high school and gets along with a weapon-maniac, the girl who was his crush, a master fighter and the school nurse. Together, they make the best of every situation and do everything to survive.",
service_id: 1, year:2010)

hotd_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/highschool_of_the_dead.png")
hotd_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/highschool_of_the_dead.png")
hotd.photo.attach(io: hotd_img_file, filename: 'anime_images/highschool_of_the_dead.png')
hotd.background_photo.attach(io: hotd_bkg_file, filename: "anime_background_images/anime_backgrounds/hotd_background.jpeg")

hotdEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
hunter = Anime.create(name: "Hunter x Hunter", description: "The story follows a young boy named Gon Freecss, who was told all his life that both his parents were dead. ... A few days later, Gon and Killua achieve their objective and begin playing Greed Island, an extremely rare and expensive video game with Nen-like properties following some clues about Ging's whereabouts.",
service_id: 1, year: 2011)

hunter_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/hunter_hunter.jpeg")
hunter_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/hunter_hunter_background.jpeg")
hunter.photo.attach(io: hunter_img_file, filename: 'anime_images/hunter_hunter.jpeg')
hunter.background_photo.attach(io: hunter_bkg_file, filename: "anime_background_images/anime_backgrounds/hunter_background.jpeg")

hunterEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
jujutsu = Anime.create(name: "Jujutsu", description: "The story follows high school student Yuji Itadori as he joins a secret organization of Jujutsu Sorcerers in order to kill a powerful Curse named Ryomen Sukuna, of whom Yuji becomes the host.",
service_id: 1, year: 2021)

jujutsu_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/jujutsu.jpeg")
jujutsu_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/jujutsu_background.jpeg")
jujutsu.photo.attach(io: jujutsu_img_file, filename: 'anime_images/jujutsu.jpeg')
jujutsu.background_photo.attach(io: jujutsu_bkg_file, filename: "anime_background_images/anime_backgrounds/jujutsu_background.jpeg")

jujutsuEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: jujutsu.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
kabaneri = Anime.create(name: "Kabaneri of the Iron Fortress", description: "A large group of survivors seek shelter while travelling on a train after their station was attacked by aggressive, undead creatures called Kabane. As the world is in the middle of an industrial revolution, a monster appears that cannot be defeated unless its heart, which is protected by a layer of iron, is pierced.",
service_id: 1, year: 2016)

kabaneri_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/kabaneri.jpeg")
kabaneri_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/kabaneri_background.jpeg")
kabaneri.photo.attach(io: kabaneri_img_file, filename: 'anime_images/kabaneri_img.jpeg')
kabaneri.background_photo.attach(io: kabaneri_bkg_file, filename: "anime_background_images/anime_backgrounds/kabaneri_background.jpeg")

kabaneriEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: kabaneri.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
magi = Anime.create(name: "Magi", description: "The Labyrinth of Magic depicts a fantastic middle-age world, where slavery is common and people are born to live and die unequal. Suddenly, there appear mysterious tall towers called 'Dungeons'.",
service_id: 1, year: 2013)

magi_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/magi.jpeg")
magi_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/magi_background.jpeg")
magi.photo.attach(io: magi_img_file, filename: 'anime_images/magi.jpeg')
magi.background_photo.attach(io: magi_bkg_file, filename: "anime_background_images/anime_backgrounds/magi_background.jpeg")

magiEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: magi.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
naruto = Anime.create(name: "Naruto", description: "Naruto is an orphan who has a dangerous fox-like entity known as Kurama the Nine-Tailed Fox sealed within his body by his father, the Fourth Hokage Minato Namikaze, the leader of Konoha's ninja force, at the cost of his own life and that of his wife, Kushina Uzumaki.",
service_id: 1, year: 2007)

naruto_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/naruto.jpeg")
naruto_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/naruto_background.jpeg")
naruto.photo.attach(io: naruto_img_file, filename: 'anime_images/naruto.jpeg')
naruto.background_photo.attach(io: naruto_bkg_file, filename: "anime_background_images/anime_backgrounds/naruto_background.jpeg")

narutoEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: naruto.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
punch = Anime.create(name: "One Punch Man", description: "The seemingly ordinary and unimpressive Saitama has a rather unique hobby: being a hero. In order to pursue his childhood dream, he trained relentlessly for three years—and lost all of his hair in the process. Now, Saitama is incredibly powerful, so much so that no enemy is able to defeat him in battle. In fact, all it takes to defeat evildoers with just one punch has led to an unexpected problem—he is no longer able to enjoy the thrill of battling and has become quite bored.",
service_id: 1, year: 2013)

punch_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/one_punch_man.jpeg")
punch_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/one_punch_background.jpeg")
punch.photo.attach(io: punch_img_file, filename: 'anime_images/one_punch_man.jpeg')
punch.background_photo.attach(io: punch_bkg_file, filename: "anime_background_images/anime_backgrounds/one_punch_background.jpeg")

punchEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: punch.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
spider = Anime.create(name: "In a world where the battle between Hero and Demon Lord repeated itself time and time again, an enormous space-time spell misfired and hit a certain Japanese high school class on Earth, killing everyone in it. However, guided by what seemed to be a miracle, the students were all reincarnated into that other world. While a handful was fortunate enough to become royalty, nobles, and other kinds of influential people, one girl was not so lucky. Being reborn as a spider monster of the weakest kind in a dungeon filled with vicious beasts, she is forced to experience extreme hardship.",
service_id: 1, year: 2018)

spider_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/so_im_spider.jpeg")
spider_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/spider_background.jpeg")
spider.photo.attach(io: spider_img_file, filename: 'anime_images/so_im_spider.jpeg')
spider.background_photo.attach(io: spider_bkg_file, filename: "anime_background_images/anime_backgrounds/spider_background.jpeg")

spiderEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: spider.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
eternity = Anime.create(name: "It, a mysterious immortal being, is sent to the Earth with no emotions nor identity. However, It is able to take the shape of those around that have a strong impetus.",
service_id: 1, year: 2021)

eternity_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/to_your_eternity.jpeg")
eternity_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/to_your_eternity_background.jpeg")
eternity.photo.attach(io: eternity_img_file, filename: 'anime_images/to_your_eternity.jpeg')
eternity.background_photo.attach(io: eternity_bkg_file, filename: "anime_background_images/anime_backgrounds/to_your_eternity_background.jpeg")

eternityEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: eternity.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

# start of this anime
world = Anime.create(name: "World Trigger", description: "When a gate to another world suddenly opens on Earth, Mikado City is invaded by strange creatures known as "Neighbors," malicious beings impervious to traditional weaponry. In response to their arrival, an organization called the Border Defense Agency has been established to combat the Neighbor menace through special weapons called "Triggers." Even though several years have passed after the gate first opened, Neighbors are still a threat and members of Border remain on guard to ensure the safety of the planet.",
service_id: 1, year: 2014)

world_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/world_trigger.jpeg")
world_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/world_trigger_background.jpeg")
world.photo.attach(io: world_img_file, filename: 'anime_images/world_trigger.jpeg')
world.background_photo.attach(io: world_bkg_file, filename: "anime_background_images/anime_backgrounds/world_trigger_background.jpeg")

worldEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: world.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime





# Service.create(name: "HIDIVE")


# Service.create(name: "CARTOON HANGOVER")