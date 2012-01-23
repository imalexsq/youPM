module RentbillsHelper

  def setup_rentbill(rentbill)
    rentbill.rentbill_line_items.build
    rentbill
  end

  def add_rentbill_line_item_link(name, form)
    link_to_function name do |page|
      line_item = render(:partial => 'line_item', :locals => { :pf => form, :line_item => Rentbill_line_item.new })
    #  page << %{
    #    var new_line_item_id = "new_" + new Date().getTime();
    #    $('line_items').insert({ bottom: "#{ escape_javascript line_item }".replace(/new_\\d+/g, new_line_item_id) });
    #  }
    end
  end
end
