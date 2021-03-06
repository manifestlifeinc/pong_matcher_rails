class MatchRequestsController < ApplicationController
  respond_to :json

  def create
    respond_with MatchRequest.create(uuid: params[:id],
                                     player_uuid: params[:player])
  end

  def show
    respond_with MatchRequest.find_by_uuid!(params[:id])
  end
end
