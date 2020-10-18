require 'roda'
require './dal'

class App < Roda
    plugin :json

    route do |r|

        r.root do
            "Welcome to buzzn"
        end

        r.is "user" do
            instance = Dal.new
            puts r.params['name']
            instance.updateUser(r.params['name'], r.params['mail'])
        end

    end
end