class BookItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_book_item, only: [:show, :edit, :update, :destroy]

  # GET /book_items
  # GET /book_items.json
  def index
    @book_items = BookItem.all
  end

  # GET /book_items/1
  # GET /book_items/1.json
  def show
  end

  # GET /book_items/new
  def new
    @book_item = BookItem.new
  end

  # GET /book_items/1/edit
  def edit
  end

  # POST /book_items
  # POST /book_items.json
  def create
    @book_item = BookItem.new(book_item_params)

    respond_to do |format|
      if @book_item.save
        format.html { redirect_to @book_item, notice: 'Book item was successfully created.' }
        format.json { render :show, status: :created, location: @book_item }
      else
        format.html { render :new }
        format.json { render json: @book_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_items/1
  # PATCH/PUT /book_items/1.json
  def update
    respond_to do |format|
      if @book_item.update(book_item_params)
        format.html { redirect_to @book_item, notice: 'Book item was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_item }
      else
        format.html { render :edit }
        format.json { render json: @book_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_items/1
  # DELETE /book_items/1.json
  def destroy
    @book_item.destroy
    respond_to do |format|
      format.html { redirect_to book_items_url, notice: 'Book item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_item
      @book_item = BookItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_item_params
      params.require(:book_item).permit(:referenceCode, :book_id)
    end
end
