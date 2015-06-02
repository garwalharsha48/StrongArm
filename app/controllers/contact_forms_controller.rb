class ContactFormsController < ApplicationController
  before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_contact_form, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contact_forms = ContactForm.all
    respond_with(@contact_forms)
  end

  def show
    respond_with(@contact_form)
  end

  def new
    @contact_form = ContactForm.new
    respond_with(@contact_form)
  end

  def edit
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    @contact_form.save
    ContactFormMailer.contact_form_submission(@contact_form).deliver_now
    redirect_to :back, notice: "Thanks. We'll be in touch soon!"
  end

  def update
    @contact_form.update(contact_form_params)
    respond_with(@contact_form)
  end

  def destroy
    @contact_form.destroy
    respond_with(@contact_form)
  end

  private
    def set_contact_form
      @contact_form = ContactForm.find(params[:id])
    end

    def contact_form_params
      params.require(:contact_form).permit(:name, :email, :subject, :message)
    end
end
