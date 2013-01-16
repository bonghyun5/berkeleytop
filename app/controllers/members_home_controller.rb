class MembersHomeController < ApplicationController
  
  def index
    @forum_posts = ForumPost.order('created_at DESC').all
  end
  
  def events
  end
  
  def directory
    @directories = Directory.all
  end
  
  def contact_messages
    @contact_infos = ContactInfo.order('created_at DESC').all
  end
  
  def email_signups
    @emails = Email.order('created_at DESC').all
  end
  
  def test_bank
  end

  def rush_applications
  end
  
end
