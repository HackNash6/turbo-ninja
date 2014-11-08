class ThingTypesController < ApplicationController
  before_action :set_thing_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /thing_types
  # GET /thing_types.json
  def index
    @thing_types = ThingType.all
  end

  # GET /thing_types/1
  # GET /thing_types/1.json
  def show
  end

  # GET /thing_types/new
  def new
    @thing_type = ThingType.new
  end

  # GET /thing_types/1/edit
  def edit
  end

  # POST /thing_types
  # POST /thing_types.json
  def create
    @thing_type = ThingType.new(thing_type_params)

    respond_to do |format|
      if @thing_type.save
        format.html { redirect_to @thing_type, notice: 'Thing type was successfully created.' }
        format.json { render :show, status: :created, location: @thing_type }
      else
        format.html { render :new }
        format.json { render json: @thing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thing_types/1
  # PATCH/PUT /thing_types/1.json
  def update
    respond_to do |format|
      if @thing_type.update(thing_type_params)
        format.html { redirect_to @thing_type, notice: 'Thing type was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing_type }
      else
        format.html { render :edit }
        format.json { render json: @thing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thing_types/1
  # DELETE /thing_types/1.json
  def destroy
    @thing_type.destroy
    respond_to do |format|
      format.html { redirect_to thing_types_url, notice: 'Thing type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing_type
      @thing_type = ThingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_type_params
      params.require(:thing_type).permit(:name)
    end
end
