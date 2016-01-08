module ApplicationHelper

  # Function to set the tab title.  If no arg, title PoliTate. Otherwise
  # it's arg + " | PoliTate"
  def full_title(page_title = '')
    base_title = "PoliTate"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def landing_page
    @disable_nav = true
  end

end
