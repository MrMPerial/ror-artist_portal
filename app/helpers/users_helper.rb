module UsersHelper
  def profile_type_icon
    if @user.profile.profile_type == 'Fan'
      # FontAwesome
      "<i class='fa-solid fa-fan'></i>".html_safe
    elsif @user.profile.profile_type == 'Artist'
      "<i class='fa-solid fa-microphone'></i>".html_safe
    elsif @user.profile.profile_type == 'A&R Rep'
      "<i class='fa-solid fa-file-signature'></i>".html_safe
    end
  end
end
