require 'mongo'

class DAO
    attr_accessor :client

    Mongo::Logger.logger = Logger.new('log/mongo.log')

    def initialize
        @client = Mongo::Client.new('mongodb://127.0.0.1:27017/markdb')    
    end
    
    def obter_usuario(email)
        users = @client[:users]
        users.find('profile.email'=> email).first
    end

    def remover_usuario(email)
        usuario = obter_usuario(email)
        unless usuario.nil?
            users = @client[:users]
            users.delete_many('_id'=> usuario[:_id])
        end
    end
end

