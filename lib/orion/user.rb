module Orion
  class User < Base

    def initialize(options = {})
      requires!(options, :username, :password)
      @options = options
    end

    def authenticated?
      connect(@options) { |ftp| ftp.pwd }
      true
    rescue Orion::NotAuthenticated
      false
    end

  end
end
