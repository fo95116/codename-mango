# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Writer.create([
  { name: 'paco', provider: 'facebook', uid: '2345' },
  { name: 'jennie', provider: 'facebook', uid: '1648' },
  { name: 'anil', provider: 'facebook', uid: '3478' },
  { name: 'feather', provider: 'facebook', uid: '1682' }
])

Vote.create([
  { vote_type: 'true', narrative_id: 1, writer_id: 3 },
  { vote_type: 'false', narrative_id: 4, writer_id: 6 },
  { vote_type: 'false', narrative_id: 2, writer_id: 7 },
  { vote_type: 'true', narrative_id: 6, writer_id: 9 }
])

Narrative.create([
  { title: 'Good Morning', story: 'this is some random text', writer_id: 1 },
  { title: 'Good Afternoon', story: 'this is some random text again', writer_id: 2 },
  { title: 'Good Evening', story: 'this is some random text again twice', writer_id: 2 },
  { title: 'Good Night', story: 'this is some random text for sleep', writer_id: 4 },
  { title: 'Apples are great', story: 'I ate an apple once.  It was good', writer_id: 1 },
  { title: 'Poutine', story: 'Never had poutine?  You are missing out', writer_id: 2 },
  { title: 'Hockey', story: 'He shoots he scores', writer_id: 2 },
  { title: 'Cat', story: 'I have a cat', writer_id: 4 }
])

Feedback.create([
  { comment: 'very good conclusion', writer_id: 4, narrative_id: 1 },
  { comment: 'good use of similies and diction', writer_id: 3, narrative_id: 2 },
  { comment: 'could improve on introduction', writer_id: 1, narrative_id: 4 },
  { comment: 'Keep on doing greate work', writer_id: 4, narrative_id: 3 }
])

Image.create([
  { url: 'http://media-cache-ak0.pinimg.com/236x/81/9f/ca/819fcaf238f6936b6077b67721e2f87b.jpg' },
  { url: 'http://www.carloweducatetogether.ie/michaelcet/wp-content/uploads/2012/09/caption.jpg' },
  { url: 'http://blog.geocaching.com/wp-content/uploads/2010/12/Caption-Contest-Squirrel.jpg' },
  { url: 'http://www.burnmagazine.org/wp-content/uploads/2010/06/obx-van.jpg' }
  ])

ImageNarratives.create([
  { image_id: 1, narrative_id: 4 },
  { image_id: 2, narrative_id: 3 },
  { image_id: 3, narrative_id: 1 },
  { image_id: 4, narrative_id: 2 },
  { image_id: 1, narrative_id: 5 },
  { image_id: 2, narrative_id: 6 },
  { image_id: 3, narrative_id: 7 },
  { image_id: 4, narrative_id: 8 }
])

