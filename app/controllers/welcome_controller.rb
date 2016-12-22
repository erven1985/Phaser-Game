class WelcomeController < ApplicationController
  before_action :set_auth
  skip_before_filter :verify_authenticity_token
  def index
  end

  
def create 
    m = {}
    params["values"].each do |s|
    m[s] = params["values"][s]
    puts s
    puts params["values"][s]
    end  
    puts "break"
    
    count = 0
    @all = CurrentUserGame.all
    @all.each do |s|
      if s.user_id = current_user.id 
        count += 1
      end
    end
    if count == 0
@current = CurrentUserGame.new(m)
  
    @current.save!

else 
  @find = CurrentUserGame.find_by_id(current_user.id)
  @find.update_attributes(m)
end


end

  def game
  
  @search = CurrentUserGame.find_by_id(current_user.id)
 if @search
  @checkpoint = @search.checkpoint_value
end
  end

  def show
    @users = User.all
    @CurrentUserGame = CurrentUserGame.all.reverse
  end



  private 
  def set_auth 
  	@auth = session[:omniauth] if session[:omniauth]
  end
end
  