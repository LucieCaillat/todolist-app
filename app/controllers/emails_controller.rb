class EmailsController < ApplicationController
  def index
    @emails = Email.all 
  end

  def new
  end
end
