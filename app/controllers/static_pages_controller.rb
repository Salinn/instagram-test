class StaticPagesController < ApplicationController
  def home
    unless Authentication.where(provider: "instagram").empty?
      @instagram = Instagram.user_recent_media(current_user.authentications.where(provider: "instagram").first.uid) # 60 appears to be the max
      #@page_2_max_id = @instagram.pagination.next_max_id gets the next pagination
      # @test = Instagram.user_liked_media
    end
    unless Authentication.where(provider: "facebook").empty?
      @facebook = User.facebook(session[:fb_access_token])
    end
  end
end
