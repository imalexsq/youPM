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

  def link_to_add_fields(name, f, assoc)
    new_object = f.object.class.reflect_on_association(assoc).klass.new
    fields = f.fields_for(assoc, new_object, :child_index => "new_#{assoc}") do |builder| 
      render(assoc.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, h("add_fields(this, '#{assoc}', '#{escape_javascript(fields)}')"))
  end

end
