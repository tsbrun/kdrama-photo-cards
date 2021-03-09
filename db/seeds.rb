# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dramas = Drama.create([
    { title: 'Crash Landing on You', img_url: 'https://upload.wikimedia.org/wikipedia/en/6/64/Crash_Landing_on_You_main_poster.jpg', wiki_url: 'https://en.wikipedia.org/wiki/Crash_Landing_on_You' },
    { title: 'Legend of the Blue Sea', img_url: 'https://upload.wikimedia.org/wikipedia/en/6/69/Legend_of_the_Blue_Sea_Poster.jpg', wiki_url: 'https://en.wikipedia.org/wiki/Legend_of_the_Blue_Sea'},
    { title: 'The Thieves', img_url: 'https://upload.wikimedia.org/wikipedia/en/4/48/The_Thieves.jpg', wiki_url: 'https://en.wikipedia.org/wiki/The_Thieves'}
])

actors = Actor.create([
    { name: 'Na Young-hee', gender: 'female', img_url: 'data:image/jpeg;base64,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', wiki_url: 'https://en.wikipedia.org/wiki/Na_Young-hee'},
    { name: 'Hyun Bin', gender: 'male', img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/190501_%ED%98%84%EB%B9%88.jpg/440px-190501_%ED%98%84%EB%B9%88.jpg', wiki_url: 'https://en.wikipedia.org/wiki/Hyun_Bin'},
    { name: 'Park Jin-young', gender: 'male', img_url: 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Park_Jinyoung_%281994%29_at_2018_KBS_Song_Festival%2C_28_December_2018_01.jpg', wiki_url: 'https://en.wikipedia.org/wiki/Park_Jin-young_(entertainer,_born_1994)'},
    { name: 'Jun Ji-hyun', gender: 'female', img_url: 'https://upload.wikimedia.org/wikipedia/commons/5/52/191112_%EC%A0%84%EC%A7%80%ED%98%84_%282%29.jpg', wiki_url: 'https://en.wikipedia.org/wiki/Jun_Ji-hyun'}
])

# characters = Character.create([
#     { name: 'Ri Jeong-hyeok', role: 'Leading Man', gender: 'male', img_url: 'data:image/jpeg;base64,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', wiki_url: '' },
#     { name: 'Shim Cheong / Se-hwa', role: 'Leading Lady', gender: 'female', img_url: 'data:image/jpeg;base64,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', wiki_url: '' },
#     { name: 'Yenicall', role: 'Main Supporting Cast Member', gender: 'female', img_url: 'https://www.aceshowbiz.com/images/still/the-thieves-image05.jpg', wiki_url: '' },
#     { name: 'Mo Yoo-ran', role: "Leading Man's Mother", gender: 'female', img_url: 'http://i.imgur.com/ANQvOCg.jpg', wiki_url: '' },
#     { name: 'unnamed', role: 'Wedding Dress Boutique Owner', gender: 'female', img_url: 'https://i.pinimg.com/236x/4c/3f/fd/4c3ffd08cabfcc0d244fbb5ec3fc69bf.jpg', wiki_url: '' },
#     { name: 'Heo Joon-jae / Kim Dam-ryeong', role: 'Leading Man (teenage version)', gender: 'male', img_url: 'https://i.pinimg.com/originals/cf/6a/0c/cf6a0cbabc21175e99d61cda8bc0be4d.jpg', wiki_url: '' }
# ])

crash_landing = Drama.find_by(title: 'Crash Landing on You')  
crash_landing.characters.create(name: 'Ri Jeong-hyeok', role: 'Leading Man', gender: 'male', img_url: 'https://assetmetrostyle.blob.core.windows.net/prod/metro.style/media/assets/banner-landscape-crash-landing-on-you-hyun-bin-grooming.jpg')
hyun_bin = Actor.find_by(name: 'Hyun Bin')
hyun_bin.characters << Character.find_by(name: 'Ri Jeong-hyeok')