class BookLoansController < ApplicationController
  before_action :set_book_loan, only: [:show, :edit, :update, :destroy]

  # GET /book_loans
  # GET /book_loans.json
  def index
    @book_loans = BookLoan.all
  end

  # GET /book_loans/1
  # GET /book_loans/1.json
  def show
  end

  # GET /book_loans/new
  def new
    @book_loan = BookLoan.new
  end

  # GET /book_loans/1/edit
  def edit
  end

  # POST /book_loans
  # POST /book_loans.json
  def create
    @book_loan = BookLoan.new(book_loan_params)

    respond_to do |format|
      if @book_loan.save
        format.html { redirect_to @book_loan, notice: 'Book loan was successfully created.' }
        format.json { render :show, status: :created, location: @book_loan }
      else
        format.html { render :new }
        format.json { render json: @book_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_loans/1
  # PATCH/PUT /book_loans/1.json
  def update
    respond_to do |format|
      if @book_loan.update(book_loan_params)
        format.html { redirect_to @book_loan, notice: 'Book loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_loan }
      else
        format.html { render :edit }
        format.json { render json: @book_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_loans/1
  # DELETE /book_loans/1.json
  def destroy
    @book_loan.destroy
    respond_to do |format|
      format.html { redirect_to book_loans_url, notice: 'Book loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_loan
      @book_loan = BookLoan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_loan_params
      params.require(:book_loan).permit(:startDate, :endDate, :book_item_id, :user_id)
    end
end
