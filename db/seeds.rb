require_relative( "../models/member.rb" )
require_relative( "../models/booking.rb" )
require_relative( "../models/session.rb" )
require("pry")

Member.delete_all()
Session.delete_all()

member1 = Member.new({
  'first_name' => 'Harold',
  'last_name' => 'Freeman',
  'gender' => 'Male',
  'dob' => '20/04/1991',
  'address' => '17 Parkview Road, Edinburgh',
  'email' => 'boss_man_harold1@gmail.com',
  'phone_number' => '07222345123'
  })

member2 = Member.new({
  'first_name' => 'Lucy',
  'last_name' => 'Foghorn',
  'gender' => 'Female',
  'dob' => '02/11/1982',
  'address' => '53 Delta Road, Edinburgh',
  'email' => 'lucyfoghorn21@hotmail.com',
  'phone_number' => '07432654172'
  })

member3 = Member.new({
  'first_name' => 'Marcus',
  'last_name' => 'Green',
  'gender' => 'Male',
  'dob' => '11/08/1979',
  'address' => '103 Redfield St, Edinburgh',
  'email' => 'mgreen1@gmail.com',
  'phone_number' => '07889657345'
  })

member1.save()
member2.save()
member3.save()

session1 = Session.new({
  'session_name' => 'Spin',
  'session_type' => 'Velocity'
  })

session2 = Session.new({
  'session_name' => 'Abs Blast',
  'session_type' => 'Studio'
  })

session3 = Session.new({
  'session_name' => 'Cardio Street Funk',
  'session_type' => 'Studio'
  })

session1.save()
session2.save()
session3.save()

booking1 = Booking.new({
  'member_id' => member1.id,
  'session_id' => session1.id
  })


binding.pry
nil
