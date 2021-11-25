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

  def create
    @email = Email.create(objet: Faker::Book.genre, body: Faker::Books::Dune.quote , read: false)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email_id = @email.id
    @email.destroy

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end

  end

  def update
    @email = Email.find(params[:id])
    @email.read = false
    @email.save

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end


  end


end
