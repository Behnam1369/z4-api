class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: %i[show update destroy]

  def index
    render json: MenuItem.all, lang: params[:lang]
  end

  def index_lang
    # render json: MenuItem.where(parent_id: nil) , 
    # # include: [:title], 
    # methods: [:get_title, :children]


    lang = params[:lang]
    menu_items = MenuItem.where(parent_id: nil)
    menu_items_with_title = menu_items.map do |menu_item|
      { id: menu_item.id,title: menu_item.get_title(lang), children: menu_item.children(lang)  }
    end
    render json: { success: true, data: menu_items_with_title }
  end

  # GET /menu_items/1
  def show
    render json: @menu_item
  end

  # POST /menu_items
  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      render json: @menu_item, status: :created, location: @menu_item
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_items/1
  def update
    if @menu_item.update(menu_item_params)
      render json: @menu_item
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menu_items/1
  def destroy
    @menu_item.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def menu_item_params
    params.require(:menu_item).permit(:parent_id_id, :english, :persian, :arabic, :spanish, :french, :turkish,
                                      :portugess, :dutch, :russian, :italian, :hindi, :urdu, :chiness, :japaness,
                                      :korean, :thai, :malay, :indonesian)
  end
end
