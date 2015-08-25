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

isa = Recreation.create!(
	recreation_type: "Interscholastic Sports",
	activity: "Aerobics")
isb = Recreation.create!(
	recreation_type: "Interscholastic Sports",
	activity: "Canoeing")
rsa = Recreation.create!(
	recreation_type: "Recreational Sports",
	activity: "Golf")
rsb = Recreation.create!(
	recreation_type: "Recreational Sports",
	activity: "Soccor")
ara = Recreation.create!(
	recreation_type: "Arts",
	activity: "Choir")
arb = Recreation.create!(
	recreation_type: "Arts",
	activity: "Jazz Ensemble")

school1 = School.create!(
	name: "First School",
	street_address: "123 Main Street",
	postal_code: "A1B 2C3",
	website_url: "www.example.com",
	contact_email: "email@example.com",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod gravida interdum. Nulla ut luctus diam. Phasellus volutpat vestibulum augue eget rhoncus. Ut vestibulum dignissim risus vitae sagittis. Donec vel tincidunt massa. Curabitur interdum condimentum malesuada. Vestibulum rutrum vehicula metus quis varius. Ut blandit urna id massa tincidunt feugiat. Proin pellentesque, sem vel lobortis ultrices, lectus risus pretium metus, id egestas ex lacus sed sem. Proin tempor eu elit non bibendum.",
	girls_boarding: 	56,
	girls_day:   		74,
	boys_boarding:		68,
	boys_day:    		50,
	campus_size: 		30,
	year_founded:		1872,
	average_class_size: 9,
	student_teacher_ratio: 7,
	dress_code:			false,
	student_body: 		'co-ed',
	seven_day_tuition:	60000,
	five_day_tuition:	30000,
	boarding_grades:	"k-12",
	day_grades:			"k-12",
	day_tuition: 		5000,
	accreditations:		"CAIS",
	advanced_placement: true,
	international_bac:	true,
	payment_plans:		true,
	need_based_aid:		true,
	merit_scholarships:	true,
	city: 				toronto,	
	student_body_size: 	248
	)

school2 = School.create!(
	name: "Second School",
	street_address: "123 Main Street",
	postal_code: "A1B 2C3",
	website_url: "www.example.com",
	contact_email: "email@example.com",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod gravida interdum. Nulla ut luctus diam. Phasellus volutpat vestibulum augue eget rhoncus. Ut vestibulum dignissim risus vitae sagittis. Donec vel tincidunt massa. Curabitur interdum condimentum malesuada. Vestibulum rutrum vehicula metus quis varius. Ut blandit urna id massa tincidunt feugiat. Proin pellentesque, sem vel lobortis ultrices, lectus risus pretium metus, id egestas ex lacus sed sem. Proin tempor eu elit non bibendum.",
	girls_boarding: 	56,
	girls_day:   		74,
	boys_boarding:		0,
	boys_day:    		0,
	campus_size: 		30,
	year_founded:		1872,
	average_class_size: 9,
	student_teacher_ratio: 7,
	dress_code:			false,
	student_body: 		'boys',
	seven_day_tuition:	60000,
	five_day_tuition:	30000,
	boarding_grades:	"k-12",
	day_grades:			"k-12",
	day_tuition: 		5000,
	accreditations:		"CAIS",
	advanced_placement: true,
	international_bac:	true,
	payment_plans:		true,
	need_based_aid:		true,
	merit_scholarships:	true,
	city: 				toronto,	
	student_body_size: 	130
	)

school3 = School.create!(
	name: "Third School",
	street_address: "123 Main Street",
	postal_code: "A1B 2C3",
	website_url: "www.example.com",
	contact_email: "email@example.com",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod gravida interdum. Nulla ut luctus diam. Phasellus volutpat vestibulum augue eget rhoncus. Ut vestibulum dignissim risus vitae sagittis. Donec vel tincidunt massa. Curabitur interdum condimentum malesuada. Vestibulum rutrum vehicula metus quis varius. Ut blandit urna id massa tincidunt feugiat. Proin pellentesque, sem vel lobortis ultrices, lectus risus pretium metus, id egestas ex lacus sed sem. Proin tempor eu elit non bibendum.",
	girls_boarding: 	56,
	girls_day:   		74,
	boys_boarding:		68,
	boys_day:    		50,
	campus_size: 		30,
	year_founded:		1872,
	average_class_size: 9,
	student_teacher_ratio: 7,
	dress_code:			false,
	student_body: 		'co-ed',
	seven_day_tuition:	60000,
	five_day_tuition:	30000,
	boarding_grades:	"k-12",
	day_grades:			"k-12",
	day_tuition: 		5000,
	accreditations:		"CAIS",
	advanced_placement: false,
	international_bac:	true,
	payment_plans:		true,
	need_based_aid:		true,
	merit_scholarships:	true,
	city: 				montreal,	
	student_body_size: 	248
	)

school4 = School.create!(
	name: "Fourth School",
	street_address: "123 Main Street",
	postal_code: "A1B 2C3",
	website_url: "www.example.com",
	contact_email: "email@example.com",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod gravida interdum. Nulla ut luctus diam. Phasellus volutpat vestibulum augue eget rhoncus. Ut vestibulum dignissim risus vitae sagittis. Donec vel tincidunt massa. Curabitur interdum condimentum malesuada. Vestibulum rutrum vehicula metus quis varius. Ut blandit urna id massa tincidunt feugiat. Proin pellentesque, sem vel lobortis ultrices, lectus risus pretium metus, id egestas ex lacus sed sem. Proin tempor eu elit non bibendum.",
	girls_boarding: 	56,
	girls_day:   		74,
	boys_boarding:		68,
	boys_day:    		50,
	campus_size: 		30,
	year_founded:		1872,
	average_class_size: 9,
	student_teacher_ratio: 7,
	dress_code:			false,
	student_body: 		'co-ed',
	seven_day_tuition:	60000,
	five_day_tuition:	30000,
	boarding_grades:	"k-12",
	day_grades:			"k-12",
	day_tuition: 		5000,
	accreditations:		"CAIS",
	advanced_placement: false,
	international_bac:	false,
	payment_plans:		true,
	need_based_aid:		true,
	merit_scholarships:	true,
	city: 				montreal,	
	student_body_size: 	248
	)
school5 = School.create!(
	name: "Fifth School",
	street_address: "123 Main Street",
	postal_code: "A1B 2C3",
	website_url: "www.example.com",
	contact_email: "email@example.com",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod gravida interdum. Nulla ut luctus diam. Phasellus volutpat vestibulum augue eget rhoncus. Ut vestibulum dignissim risus vitae sagittis. Donec vel tincidunt massa. Curabitur interdum condimentum malesuada. Vestibulum rutrum vehicula metus quis varius. Ut blandit urna id massa tincidunt feugiat. Proin pellentesque, sem vel lobortis ultrices, lectus risus pretium metus, id egestas ex lacus sed sem. Proin tempor eu elit non bibendum.",
	girls_boarding: 	260,
	girls_day:   		340,
	boys_boarding:		380,
	boys_day:    		200,
	campus_size: 		30,
	year_founded:		1872,
	average_class_size: 9,
	student_teacher_ratio: 7,
	dress_code:			false,
	student_body: 		'co-ed',
	seven_day_tuition:	60000,
	five_day_tuition:	30000,
	boarding_grades:	"k-12",
	day_grades:			"k-12",
	day_tuition: 		5000,
	accreditations:		"CAIS",
	advanced_placement: true,
	international_bac:	false,
	payment_plans:		true,
	need_based_aid:		true,
	merit_scholarships:	true,
	city: 				calgary,	
	student_body_size: 	1180
	)

schre1 = SchoolRecreation.create!(
	school: school1,
	recreation: isa
	)
schre2 = SchoolRecreation.create!(
	school: school1,
	recreation: rsa
	)
schre3 = SchoolRecreation.create!(
	school: school2,
	recreation: isa
	)
schre4 = SchoolRecreation.create!(
	school: school2,
	recreation: rsa
	)
schre5 = SchoolRecreation.create!(
	school: school3,
	recreation: isa
	)
schre6 = SchoolRecreation.create!(
	school: school3,
	recreation: rsa
	)
schre7 = SchoolRecreation.create!(
	school: school4,
	recreation: isa
	)
schre8 = SchoolRecreation.create!(
	school: school4,
	recreation: rsa
	)
schre9 = SchoolRecreation.create!(
	school: school5,
	recreation: isa
	)
schre10 = SchoolRecreation.create!(
	school: school5,
	recreation: rsa
	)

schac1 = SchoolAcademic.create!(
	school: school1,
	academic: csa
	)
schac2 = SchoolAcademic.create!(
	school: school1,
	academic: apa
	)
schac3 = SchoolAcademic.create!(
	school: school2,
	academic: csa
	)
schac4 = SchoolAcademic.create!(
	school: school2,
	academic: apa
	)
schac5 = SchoolAcademic.create!(
	school: school3,
	academic: csa
	)
schac6 = SchoolAcademic.create!(
	school: school3,
	academic: apa
	)
schac7 = SchoolAcademic.create!(
	school: school4,
	academic: csa
	)
schac8 = SchoolAcademic.create!(
	school: school4,
	academic: apa
	)
schac9 = SchoolAcademic.create!(
	school: school5,
	academic: csa
	)
schac10 = SchoolAcademic.create!(
	school: school5,
	academic: apa
	)

schcu1 = SchoolCampu.create!(
	school: school1,
	campu: cab
	)
schcu2 = SchoolCampu.create!(
	school: school1,
	campu: fab
	)
schcu3 = SchoolCampu.create!(
	school: school2,
	campu: cab
	)
schcu4 = SchoolCampu.create!(
	school: school2,
	campu: fab
	)
schcu5 = SchoolCampu.create!(
	school: school3,
	campu: cab
	)
schcu6 = SchoolCampu.create!(
	school: school3,
	campu: fab
	)
schcu7 = SchoolCampu.create!(
	school: school4,
	campu: cab
	)
schcu8 = SchoolCampu.create!(
	school: school4,
	campu: fab
	)
schcu9 = SchoolCampu.create!(
	school: school5,
	campu: cab
	)
schcu10 = SchoolCampu.create!(
	school: school5,
	campu: fab
	)