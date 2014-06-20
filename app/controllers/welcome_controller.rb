class WelcomeController < ApplicationController
  def index
    r = Redis.new
    begin
      @rv = r.get("sample")
    rescue Exception => e
      @rv = "Exception: #{e.message}"
    end

    rs = Redis::Store::Factory.create
    begin
      @rsv = rs.get("sample")
    rescue Exception => e
      @rsv = "Exception: #{e.message}"
    end
  end
end
