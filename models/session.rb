require_relative( '../db/sql_runner' )

class Session

    attr_accessor  :session_name, :session_type
    attr_reader :id

    def initialize (options)
      @id = options['id'].to_i if options['id']
      @session_name = options['session_name']
      @session_type = options['session_type']
    end


    def save()
      sql = "INSERT INTO sessions
      (
        session_name,
        session_type
        ) VALUES (
        $1, $2
        )
        RETURNING id"

        values = [@session_name, @session_type]
        results = SqlRunner.run(sql, values)
        @id = results[0]['id'].to_i
    end


    def self.all()
      sql = "SELECT * FROM sessions"
      results = SqlRunner.run(sql)
      return results.map {|session| Session.new(session)}
    end

    def self.delete_all()
      sql = "DELETE FROM sessions"
      SqlRunner.run(sql)
    end

    def update()
      sql = "UPDATE sessions session_type
      (
      session_name,
      session_type
      ) = (
          $1, $2
      )
      WHERE id = $3"
      values = [@session_name, @session_type, @id]
      SqlRunner.run(sql, values)
    end

    def delete()
      sql = "DELETE FROM sessions WHERE id = $1"
      values = [@id]
      SqlRunner.run(sql, values)
    end

    def self.find(id)
      sql = "SELECT * FROM sessions WHERE id = $1"
      values = [id]
      result = SqlRunner.run(sql, values).first
      session = Session.new(result)
      return session
    end


  end
