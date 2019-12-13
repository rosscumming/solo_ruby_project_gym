require_relative( "../models/member.rb" )
require_relative( "../models/booking.rb" )
require_relative( "../models/session.rb" )
require("pry")

Member.delete_all()

member1 = Member.new({
  'first_name' => 'Harold',
  'last_name' => 'Freeman',
  'gender' => 'male',
  'dob' => '20/04/1991',
  'address' => '17 Parkview Road, Edinburgh',
  'email' => 'boss_man_harold1@gmail.com',
  'phone_number' => '07222345123'
  })

member1.save()

session1 = Session.new({
  'session_name' => 'spin',
  'session_type' => 'velocity'
  })

booking1 = Booking.new({
  'member_id' => member1.id,
  'session_id' => session1.id
  })


binding.pry
nil
