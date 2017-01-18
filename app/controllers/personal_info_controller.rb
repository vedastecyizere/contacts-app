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

  def all_contacts
    @all_contacts = Contact.all
    render "all_contacts.html.erb"
  end 
end 
