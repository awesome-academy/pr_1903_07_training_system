module ApplicationHelper
  def has_role?(role)
    current_user && current_user.has_role?(role)
  end

  def full_title page_title = ""
    base_title = "Training system"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end
end
