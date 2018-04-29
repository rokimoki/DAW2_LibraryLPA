class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  def login
    if request.method == "POST"
      email = params[:email]
      password = params[:password]
      p = Person.login(email, password)
      res = {type: 'Error de identificación', message: 'Usuario no encontrado'}
      if p.count == 1
        res = p.first
      end
      render json: res
    end
  end

  def register
    if request.method == "POST"
      name = params[:name]
      email = params[:email]
      password = params[:password]
      begin
        Person.register(name, email, password)
        msg = { type: 'Registro#ok', message: 'Ususario registrado' }
      rescue ActiveRecord::RecordInvalid
        msg = { type: 'Registro#error', message: 'Correo electrónico ya existente' }
      end
      render json: msg
    end
  end

  def getAllUserLoans
    if request.method == "POST"
      userId = params[:userId]
      loans = Person.getAllUserLoans(userId)
      render json: loans
    end
  end

  def getBookLoansAndBookByUserId
    if request.method == "POST"
      userId = params[:userId]
      loansAndBook = Person.getAllUserLoans(userId)
      res = Array.new
      loansAndBook.each do |loan|
        obj = {}
        obj["bookLoanId"] = loan.id
        obj["daysLeft"] = (loan.endDate.to_date - Time.now.to_date).to_i
        obj["book"] = loan.book_item.book
        res.push obj
      end
      render json: res
    end
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :email, :picture, :password)
    end
end
