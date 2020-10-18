require 'tiny_tds'

class DBConnection
    def connect()
        client = TinyTds::Client.new username: 'sa', password: 'Shlok123', host: 'DBSERVER', database: 'buzzn'
        return client
    end
end