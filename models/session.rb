require_relative( '../db/sql_runner' )



class Session



    attr_reader :id, :session_name, :session_type

    def initialize (options)
      @id = options['id'].to_i if options['id']
      @session_name = options['session_name']
      @session_type = options['session_type']
    end

  end
