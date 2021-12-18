class HomesController < ApplicationController
  def top
    @see = See.find_by(ip: request.remote_ip)
    unless @see
      See.create(ip: request.remote_ip)
    end
  end

  def inquiry
  end
end
