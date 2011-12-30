class Rentbill_line_items < ApplicationController
  def create
    @rentbill = Rentbill.find(params[:rentbill_id])
    @rentbill_line_items = @rentbill.line_items.create(params[:line_item])
    redirect_to rentbill_path(@rentbill)
  end
end
