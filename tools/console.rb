require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

######### - Patient, Doctor, Appointment ######
p1 = Patient.new("Melissa", "headache", 23)
p2 = Patient.new("Daryn", "stomach flu", 58)
p3 = Patient.new("Josie", "diabetes", 61)
p4 = Patient.new("Genevieve", "constipation", 2)
p5 = Patient.new("Emile", "hurt knee", 5)

appt1 = Appointment.new("October 5", "5:00 PM")
appt2 = Appointment.new("September 3", "8:30 AM")
appt3 = Appointment.new("October 5", "5:30 PM")
appt4 = Appointment.new("October 9", "10:30 AM")

mike = Doctor.new("Mike", "general", 4)
priscilla = Doctor.new("Priscilla", "cardio", 8)
meredith = Doctor.new("Meredith", "neuro", 15)
alex = Doctor.new("Alex", "pediatrician", 25)

appt1.patient = p1
appt2.patient = p3
appt3.patient = p4 
appt4.patient = p5
appt1.doctor = meredith 
appt2.doctor = priscilla
appt3.doctor = alex 
appt4.doctor = alex 

########## - Song, Genre, Artist ########
britney = Artist.new("Britney", 65, "OOPS")
katy = Artist.new("Katy Perry", 70, "Dark Horse")
taylor = Artist.new("Taylor Swift", 70, "Cardigan")
jason = Artist.new("Jason Derulo", 68, "whip")

s1 = Song.new("s1")
s2 = Song.new("s2")
s3 = Song.new("s3")
s4 = Song.new("s4")

pop = Genre.new("pop")
rap = Genre.new("rap")
classical = Genre.new("classical")
dance = Genre.new("dance")

s1.genre = pop
s2.genre = classical
s3.genre = dance 
s4.genre = dance 
s1.artist = britney
s2.artist = taylor
s3.artist = jason 
s4.artist = katy 

########## - person, subscription, magazine - ######
ashley = Person.new("Ashley", 25)
kara = Person.new("Kara", 33)
israel = Person.new("Israel", 30)
michelle = Person.new("Michelle", 19)

sub1 = Subscription.new(10, 14)
sub2 = Subscription.new(15, 40)
sub3 = Subscription.new(20, 2)

mag1 = Magazine.new("mag1")
mag2 = Magazine.new("mag2")
mag3 = Magazine.new("mag3")
mag4 = Magazine.new("mag4")
mag5 = Magazine.new("mag5")

sub1.person = ashley 
sub2.person = kara 
sub3.person = israel 
sub1.magazine = mag1 
sub2.magazine = mag1 
sub3.magazine = mag5

############# - club, student, memembership #########
fencing = Club.new("fencing club", "fencing")
chess = Club.new("team elite", "chess")
drama = Club.new("Alchemist", "drama")
band = Club.new("Marching Band", "music")

mem1 = Membership.new(20)
mem2 = Membership.new(0)
mem3 = Membership.new(14)
mem4 = Membership.new(75)

james = Student.new("James", 14)
angel = Student.new("Angel", 17)
tait = Student.new("Tait", 16)
rebecca = Student.new("Rebecca", 13)

mem1.student = james 
mem1.club = fencing
mem2.student = tait
mem2.club = chess
mem3.student = angel 
mem3.club = fencing 
mem4.student = angel 
mem4.club = band 
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
