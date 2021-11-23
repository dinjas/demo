class FrogsController < ApplicationController
  before_action :set_frog, only: %i[ show edit update destroy ]

  # GET /frogs or /frogs.json
  def index
    @frogs = Frog.all
  end

  # GET /frogs/1 or /frogs/1.json
  def show
  end

  # GET /frogs/new
  def new
    @frog = Frog.new
  end

  # GET /frogs/1/edit
  def edit
  end

  # POST /frogs or /frogs.json
  def create
    @frog = Frog.new(frog_params)

    respond_to do |format|
      if @frog.save
        format.html { redirect_to @frog, notice: "Frog was successfully created." }
        format.json { render :show, status: :created, location: @frog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frogs/1 or /frogs/1.json
  def update
    respond_to do |format|
      if @frog.update(frog_params)
        format.html { redirect_to @frog, notice: "Frog was successfully updated." }
        format.json { render :show, status: :ok, location: @frog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frogs/1 or /frogs/1.json
  def destroy
    @frog.destroy
    respond_to do |format|
      format.html { redirect_to frogs_url, notice: "Frog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frog
      @frog = Frog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frog_params
      params.require(:frog).permit(:name, :description)
    end
end
