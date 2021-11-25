class EmailsController < ApplicationController
  def index
    @emails = Email.all 
  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: true)
    @emails = Email.all 
    respond_to do |format|
      format.html { redirect_to books_path }
      format.js { }
    end

  end
end
