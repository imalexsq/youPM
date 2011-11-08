module ApplicationHelper

  # Sets the identifier, title and subtitle for the page
  #
  # Example:
  #   set_page(:dashboard,'Dashboard', 'Welcome to your Dashboard')
  #
  def set_page(section, title = nil, subtitle =nil)
    @page_section = section
    @page_title = title
    @page_subtitle = subtitle
  end

  # Used as a helper for building navigation and automatically
  # deceide if scope is current.
  #
  def active_class(section)
    return {class: :active}   if section == @page_section
    {}
  end

end
