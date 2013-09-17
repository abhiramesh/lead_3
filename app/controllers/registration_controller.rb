class RegistrationController < Devise::RegistrationsController

	def create
    if request.referer.to_s.downcase.include? "vinny"
      campaign = request.referer.split('.com/').last
    else
      campaign = "other"
    end
    if params["user"]["age"]
      age = params["user"]["age"]
    end
    if params["user"]["zipcode"]
      zipcode = params["user"]["zipcode"]
    end
    @user = User.create(:ip => request.remote_ip, :campaign => campaign, :age => age, :zipcode => zipcode)
    sign_in @user
  end
    

end
