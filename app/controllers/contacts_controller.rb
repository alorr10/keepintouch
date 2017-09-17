class ContactsController < ApplicationController

  def new
    @user = User.find(params[:id])
    @contact = Contact.new(user: @user)
  end

  def create
    @user = User.find(params[:id])
    @contact = @user.contacts.new(contact_params)
    if @contact.save
      redirect_to user_path(@user), notice: "Contact created!"
    else
      render 'new'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :phone, :contact_method, :handle, :last_contacted_on)
    end

end