require './dbConnection'

class Dal
    @@dbConnection = nil

    def initialize
        connection = DBConnection.new
        @@dbConnection = connection.connect()
    end

    def updateUser(name, mail)
        sql = "INSERT INTO Users Values('"+ name +"', '"+ mail +"')"
        result = @@dbConnection.execute(sql)
        puts sql
        puts result.each
        return @@dbConnection.execute("select * from Users").each
    end
end