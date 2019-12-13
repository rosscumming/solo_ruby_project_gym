require_relative( '../db/sql_runner' )



class Booking

  def initialize (options)

    attr_reader :id, :member_id, :session_id

    def initialize (options)
      @id = options['id'].to_i if options['id']
      @member_id = options['member_id'].to_i
      @session_id = options['session_type'].to_i
    end

  end



end
