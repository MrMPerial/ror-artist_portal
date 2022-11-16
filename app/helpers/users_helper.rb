module UsersHelper
  def job_title_icon
    if @user.profile.job_title == 'Developer'
      # FontAwesome
      "<i class='fa-solid fa-code'></i>".html_safe
    elsif @user.profile.job_title == 'Entrepreneur'
      "<i class='fa-solid fa-lightbulb'></i>".html_safe
    elsif @user.profile.job_title == 'Investor'
      "<i class='fa-solid fa-dollar-sign'></i>".html_safe
    end
  end
end
