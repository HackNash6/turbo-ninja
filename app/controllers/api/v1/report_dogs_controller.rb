require 'rubygems'
require 'json'

class Api::V1::ReportDogsController < ApplicationController

  # Getting locations of all dogs
  def heel
    user = User.find(params[:id])
    @things = user.things.to_a
  end

  # Reporting that a dog has been seen by an app
  def gotcha
    args = JSON.parse(request.body.string)
    thing = Thing.where(:uuid => args["observedID"]).first

    unless thing.nil?
      thing.latitude = args[:latitude]
      thing.longitude = args[:longitude]
      thing.precision = args[:precision]
      thing.save
      render :json => {:status => "SUCCESS"}
    else
      render :json => {:status => "ERROR"}
    end
  end
end
