class ContactsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @contact = Contact.new
  end

  def create
    @user = User.find(params[:user_id])
    @contact = @user.contacts.new(contact_params)
    if @contact.save
      redirect_to user_path(@user), notice: "Contact created!"
    else
      render 'new'
    end
  end

  def update_contacted_at
    @contact = Contact.find(params[:id])
    @contact.contact!

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @contact = Contact.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def edit
    @user = User.find(params[:user_id])
    @contact = Contact.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end



  private

    def contact_params
      params.require(:contact).permit(:name, :phone, :contact_method, :handle, :last_contacted_on)
    end

end
