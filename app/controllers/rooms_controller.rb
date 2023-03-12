# frozen_string_literal: true

class RoomsController < ApplicationController
  def index
    @new_room = Room.new
    @rooms = Room.all
  end

  def create
    @new_room = Room.new(user: current_user)

    if @new_room.save
      @new_room.broadcast_append_to :rooms
    end
  end

  def show
    @room = Room.find_by!(title: params[:title])
    @messages = @room.messages
    @new_message = current_user&.messages&.build
  end
end
