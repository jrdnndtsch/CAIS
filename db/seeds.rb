# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ontario = Province.create!(name: 'Ontario')
quebec = Province.create!(name: 'Quebec')
bc = Province.create!(name: 'British Columbia')
alberta = Province.create!(name: 'Alberta')
manitoba = Province.create!(name: 'Manitoba')
saskatchewan = Province.create!(name: 'Saskatchewan')
ns = Province.create!(name: 'Nova Scotia')
nb = Province.create!(name: 'New Brunswick')
nfld = Province.create!(name: 'Newfoundland')
pei = Province.create!(name: 'Prince Edward Island')

toronto = City.create!(
	name: 'Toronto',
	province: ontario)

montreal = City.create!(
	name: 'Montreal',
	province: quebec)

vancouver = City.create!(
	name: 'Vancouver',
	province: bc)

calgary = City.create!(
	name: 'Calgary',
	province: alberta)

winnipeg = City.create!(
	name: 'Winnipeg',
	province: manitoba)

saskatoon = City.create!(
	name: 'Saskatoon',
	province: saskatchewan)

halifax = City.create!(
	name: 'Halifax',
	province: ns)

moncton = City.create!(
	name: 'Moncton',
	province: nb)

stjohn = City.create!(
	name: 'St. John',
	province: nfld)

charlottetown = City.create!(
	name: 'Charlottetown',
	province: pei)

csa = Academic.create!(
	subject: 'Computer Studies',
	course: 'Computer Applications')
csb = Academic.create!(
	subject: 'Computer Studies',
	course: 'Multimedia')
apa = Academic.create!(
	subject: 'Advanced/enrichement programs',
	course: 'International Baccalaureate')
ena = Academic.create!(
	subject: 'English',
	course: 'Classics')
enb = Academic.create!(
	subject: 'English',
	course: 'Creative Writing')
sca = Academic.create!(
	subject: 'Science',
	course: 'Anatomy')
scb = Academic.create!(
	subject: 'Science',
	course: 'Chemistry')
hsa = Academic.create!(
	subject: 'Humanities/social sciences',
	course: 'Economics')
hsb = Academic.create!(
	subject: 'Humanities/social sciences',
	course: 'Psychology')
spa = Academic.create!(
	subject: 'Support Programs',
	course: 'College Counseling')
spb = Academic.create!(
	subject: 'Support Programs',
	course: 'ESL: beginning')
sza = Academic.create!(
	subject: 'Special Programs',
	course: 'Extensive Exchange')
szb = Academic.create!(
	subject: 'Special Programs',
	course: 'Independant Study')
pva = Academic.create!(
	subject: 'Performing/visual arts',
	course: 'Acting')
pvb = Academic.create!(
	subject: 'Performing/visual arts',
	course: 'Ceramics')
mua = Academic.create!(
	subject: 'Music',
	course: 'Music Appreciation')
mub = Academic.create!(
	subject: 'Music',
	course: 'Composition')
fla = Academic.create!(
	subject: 'Foreign Languages',
	course: 'French')
flb = Academic.create!(
	subject: 'Foreign Languages',
	course: 'Spanish')
hia = Academic.create!(
	subject: 'History',
	course: 'Asian History')
hib = Academic.create!(
	subject: 'History',
	course: 'European History')
maa = Academic.create!(
	subject: 'Mathematics',
	course: 'Calculus')
mab = Academic.create!(
	subject: 'Mathematics',
	course: 'Trigonometry')
rpa = Academic.create!(
	subject: 'Religion/philosophy',
	course: 'Ethics')
rpb = Academic.create!(
	subject: 'Religion/philosophy',
	course: 'Faith')
maa = Academic.create!(
	subject: 'Distinctive or New Program',
	course: 'Bi-lingual diploma')
mab = Academic.create!(
	subject: 'Distinctive or New Program',
	course: 'Creative learning center')

daa = Campu.create!(
	campu_type: "Dorm Amenities",
	feature: "Modern Facilities")
dab = Campu.create!(
	campu_type: "Dorm Amenities",
	feature: "Game Room")
faa = Campu.create!(
	campu_type: "Facilities",
	feature: "Baseball field")
fab = Campu.create!(
	campu_type: "Facilities",
	feature: "Fitness center")
caa = Campu.create!(
	campu_type: "Clubs & Organizations",
	feature: "Modern Facilities")
cab = Campu.create!(
	campu_type: "Clubs & Organizations",
	feature: "Game Room")