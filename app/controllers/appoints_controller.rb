#app/controllers/appoints_controller.rb
class AppointsController < ApplicationController
 
  def index
    date_from_ajax = params[:matched_date]
    reduce = Appoint.where(:date => date_from_ajax)
    hour_on_date = reduce.collect {|x| x.hour}
    @new_dates = hour_on_date
    render :layout => false
  end
 
  def new
    @appoints = Appoint.create
      respond_to do |format|
        format.html
        format.js
     end
  end
  
 
  def create
     @appoint = Appoint.create(params[:appoints])
      if @appoint.save
        redirect_to new_appoint_path
      else
        err = ''
        @appoint.errors.full_messages.each do |m|
        err << m
      end
        redirect_to new_appoint_path, :flash => { :alert => "#{err}, please try again" }
      end
    end
 end