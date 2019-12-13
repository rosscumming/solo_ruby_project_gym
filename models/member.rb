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

  def save()
    sql = "INSERT INTO members(first_name, last_name, gender, dob, address, email, phone_number) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id"

    values = [@first_name, @last_name, @gender, @dob, @address, @email, @phone_number]
    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM members"
    results = SqlRunner.run(sql)
    return results.map { |member| Member.new(member) }
  end

  def self.delete_all()
    sql = "DELETE FROM members"
    SqlRunner.run(sql)
  end




end
