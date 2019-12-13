require_relative( '../db/sql_runner' )



class Member

  attr_reader :id
  attr_accessor :first_name, :last_name, :gender, :dob, :address, :email, :phone_number

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @gender = options['gender']
    @dob = options['dob']
    @address = options['address']
    @email = options['email']
    @phone_number = options['phone_number']
  end


end
