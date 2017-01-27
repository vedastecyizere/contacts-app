class PersonalInfoController < ApplicationController

  def info
    @info = Contact.first 
    render "info.html.erb"
  end

  def info1
    @info1 = Contact.second
    render "info1.html.erb"
  end 

  def info2
    @info2 = Contact.third 
    render "info2.html.erb"
  end 

  def index
    @contacts = Contact.all
    render "index.html.erb"
  end 

  def new 
  end 

  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone_number = params[:phone_number]
    contact = Contact.new({first_name: first_name, last_name: last_name, email: email, phone_number: phone_number})
    contact.save
    flash[:info] = "Contact list updated"
    redirect_to "/contacts/" 

  end 

  def show 
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    contact = Contact.find_by(id: params[:id])
    contact.first_name= params[:first_name]
    contact.last_name = params[:last_name]
    contact.email = params[:email]
    contact.phone_number = params[:phone_number]
    contact.save
    flash[:info] = "Contact list updated"
    redirect_to "/contacts/#{contact.id}" 
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    redirect_to "/contacts/"
    flash[:info] = "Your contact has been deleted"

  end
end 
