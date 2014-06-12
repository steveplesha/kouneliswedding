class UsersController < ApplicationController
  def index
	@users = User.all
  end
  
  def new
	@user = User.new
  end
  
  def create
	@user = User.new(params[:user])
	if @user.save
	  redirect_to users_url, :notice => "User created"
	else
	  render "new"
	end
  end
  
  def show
    @user = User.find(session[:user_id])
  end
  
  
  def edit
	@user = User.find(params[:id])
  end
   
  def update
	@user = User.find(params[:id])
    @logged_in_user = User.find(session[:user_id])
	
    respond_to do |format|
      if @user.update_attributes(params[:user])
	    format.html { redirect_to users_submit_path, notice: 'Your information has been updated.' }
        format.json { head :no_content }
	  else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def import
    User.import(params[:file])
	redirect_to users_path, notice: "Import submitted"
  end
  
  def submit 

  end
  
  def destroy
	@user = User.find(params[:id])
	@user.destroy
	
	respond_to do |format|
	  format.html { redirect_to users_path }
	  format.json { head :no_content }
	end
  end	  
end
