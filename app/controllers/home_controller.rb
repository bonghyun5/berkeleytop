class HomeController < ApplicationController
  skip_before_filter :authorize
  
  def index
  end

  def about

  end

  def brothers
  end

  def rush
  end

  def media
  end

  def contact
    @contact_info = ContactInfo.new
  end

  def faq
  end

  def officers
  end

  def login
  end

end
