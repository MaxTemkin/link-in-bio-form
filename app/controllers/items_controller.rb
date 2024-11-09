class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def links
    render({ :template => "item_templates/backdoor" })
  end

  def new_items
    x = Item.new
    x.link_description = params[:link_url]
    x.link_url = params[:description]
    x.thumbnail_url = [:image_url]
    x.save
    redirect_to("/")
  end

end
