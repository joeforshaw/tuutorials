module HomeHelper

  def missing_technology_link
    if user_signed_in?
      return mail_to("tuuutorials@gmail.com", "Something missing?", :id => "missing-technology", :subject => "Add a new technology to the list")
    else
     return link_to("Something missing?", :new_user_session, :id => "missing-technology")
    end
  end

end
