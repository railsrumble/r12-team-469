class InvoiceHeadersController < ApplicationController
load_and_authorize_resource  

  def create
    @invoice_header.created_by = current_user.id
    if @invoice_header.save
      redirect_to @invoice_header, notice: 'InvoiceHeader was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @invoice_header.update_attributes(params[:invoice_header])
      redirect_to @invoice_header, notice: 'InvoiceHeader was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @invoice_header.destroy

    redirect_to units_url
  end
end
