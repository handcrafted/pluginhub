class PagesController < ApplicationController
  
  def index
    redirect_to page_path("home")
  end

  def show
    page_id = "pages/#{(params[:id] || 'home').to_s}"
    @page_description = ""
    @page_keywords = ""
    logger.debug(page_id)
    if template_exists?(page_id)
      render :template => page_id
    else
      raise ActiveRecord::RecordNotFound, "Couldn't find the page #{params[:id]}"
    end
  end
  
end
