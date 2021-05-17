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
aot = Anime.create(name: "Attack on Titans", description: "It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans;the story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother.",
service_id: 1, year: 2013)

aot_img_file = open("https://trt-seeds.s3.amazonaws.com/anime_images/aot_img.jpeg")
aot_bkg_file = open("https://trt-seeds.s3.amazonaws.com/anime_background_images/anime_backgrounds/aot_background.jpeg")
aot.photo.attach(io: aot_img_file, filename: 'anime_images/aot_img.jpeg')
aot.background_photo.attach(io: aot_bkg_file, filename: "anime_background_images/anime_backgrounds/aot_background.jpeg")

aotEp = Episode.create(name: "Unexpected Recruit", description: "In this desolent land burdened by sadness only one star can take on this heavy existential dread.", anime_id: aot.id )

aot_vid_file = open("https://trt-seeds.s3.amazonaws.com/videos/Patrick+joins+the+Survey+Corps.mp4")
aotEp.video.attach(io: aot_vid_file, filename: "videos/Patrick joins the Survey Corps.mp4")

aot_ep_file = open("https://trt-seeds.s3.amazonaws.com/video_thumbnails/Screen+Shot+2021-05-14+at+2.51.37+PM.png")
aotEp.photo.attach(io: aot_ep_file, filename: "video_thumbnails/Screen Shot 2021-05-14 at 2.51.37 PM.png" )
# end of this anime

Service.create(name: "HIDIVE")


Service.create(name: "CARTOON HANGOVER")