class WelcomesController < ApplicationController


  def index
    
  end

  def send_email
    error = []
    error << 'Name can not be blank.' if params[:name].blank?
    error << 'Email can not be blank.' if params[:email].blank?
    error << 'Message can not be blank.' if params[:message].blank?
    if error.blank?
      begin
        ContactMailer.contact_form(params[:name], params[:email], params[:message]).deliver
      rescue => e
        error << e.to_s
      end
    end
    respond_to do |format|
        format.html { redirect_to root_path, :notice=> 'Done !!' }
        if error.blank?
          format.json { render json: {msg: 'Thank you for the message. We will contact you shortly.' }, status: 200 }
        else
          format.json { render json: {error: error }, status: 422 }
        end
    end
  end
end