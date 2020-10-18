require 'roda'
require './dal'

class App < Roda
    plugin :json
    plugin :render

    route do |r|

        r.root do
            "<h1>Welcome to buzzn</h1>"
        end

        # to render html page
        r.is "login" do
            render('form')
        end

        # to make it as rest
        r.is "user" do
            instance = Dal.new
            puts r.params['name']
            instance.updateUser(r.params['name'], r.params['mail'])
            # r.params['name'] + "->" + r.params['mail']
        end

    end
end