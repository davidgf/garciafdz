class PagesController < ApplicationController
  def home
  end

  def contact
    ContactMailer.info_mail(params[:message]).deliver
    respond_to do |format|
      format.html {render layout: false}
      format.json {render json: '{"ok": true}'}
    end
  end
end
