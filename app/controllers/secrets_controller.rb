class SecretsController < ApplicationController
  before_action :verify

  def show
  end

  private

  def verify
    if !session.include?(:name)
      redirect_to login_path
    end 
  end

end
