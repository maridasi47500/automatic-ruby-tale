class RubytalesController < ApplicationController
  before_action :set_rubytale, only: %i[ show edit update destroy ]

  # GET /rubytales or /rubytales.json
  def index
    @rubytales = Rubytale.all
  end

  # GET /rubytales/1 or /rubytales/1.json
  def show
  end

  # GET /rubytales/new
  def new
    @rubytale = Rubytale.new
  end

  # GET /rubytales/1/edit
  def edit
  end

  # POST /rubytales or /rubytales.json
  def create
    @rubytale = Rubytale.new(rubytale_params)

    respond_to do |format|
      if @rubytale.save
        format.html { redirect_to @rubytale, notice: "Rubytale was successfully created." }
        format.json { render :show, status: :created, location: @rubytale }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @rubytale.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /rubytales/1 or /rubytales/1.json
  def update
    respond_to do |format|
      if @rubytale.update(rubytale_params)
        format.html { redirect_to @rubytale, notice: "Rubytale was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @rubytale }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @rubytale.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /rubytales/1 or /rubytales/1.json
  def destroy
    @rubytale.destroy!

    respond_to do |format|
      format.html { redirect_to rubytales_path, notice: "Rubytale was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubytale
      @rubytale = Rubytale.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def rubytale_params
      params.expect(rubytale: [ :title, :region_id, :person_id, :becomestring ])
    end
end
