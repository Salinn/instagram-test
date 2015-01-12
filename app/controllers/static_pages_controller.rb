class StaticPagesController < ApplicationController
  def home
    @instagram = Instagram.user_recent_media(current_user.authentications.where(provider: "instagram").first.uid) # 60 appears to be the max
    #@page_2_max_id = @instagram.pagination.next_max_id gets the next pagination
    @test = Instagram.user_liked_media
  end

  helper_method :next
end
