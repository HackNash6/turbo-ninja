require 'rubygems'
require 'json'

class Api::V1::ReportDogsController < ApplicationController

  # Reporting that a dog has been seen by an app
  def gotcha
    args = JSON.parse(request.body.string)
    thing = Thing.where(:uuid => args[:thing_id]).first
    thing.latitude = args[:latitude]
    thing.longitude = args[:longitude]
    thing.precision = args[:precision]
    thing.save
  end
end
