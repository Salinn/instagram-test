class StaticPagesController < ApplicationController
  def home
    @instagram = Instagram.user_recent_media(current_user.authentications.where(provider: "instagram").first.uid, {:count => 3})
  end
end
