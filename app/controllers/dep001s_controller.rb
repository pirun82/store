class Dep001sController < ApplicationController
  before_action :set_dep001, only: [:show, :edit, :update, :destroy]

  # GET /dep001s
  # GET /dep001s.json
  def index
    @dep001s = Dep001.all
  end

  # GET /dep001s/1
  # GET /dep001s/1.json
  def show
  end

  # GET /dep001s/new
  def new
    @dep001 = Dep001.new
  end

  # GET /dep001s/1/edit
  def edit
  end

  # POST /dep001s
  # POST /dep001s.json
  def create
    @dep001 = Dep001.new(dep001_params)

    respond_to do |format|
      if @dep001.save
        format.html { redirect_to @dep001, notice: 'Kitchen Item was added' }
        format.json { render :show, status: :created, location: @dep001 }
      else
        format.html { render :new }
        format.json { render json: @dep001.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dep001s/1
  # PATCH/PUT /dep001s/1.json
  def update
    respond_to do |format|
      if @dep001.update(dep001_params)
        format.html { redirect_to @dep001, notice: 'Kitchen Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @dep001 }
      else
        format.html { render :edit }
        format.json { render json: @dep001.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dep001s/1
  # DELETE /dep001s/1.json
  def destroy
    @dep001.destroy
    respond_to do |format|
      format.html { redirect_to dep001s_url, notice: 'Kitchen item was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dep001
      @dep001 = Dep001.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dep001_params
      params.require(:dep001).permit(:product_key, :name, :description, :picurl, :whole_sale, :retail_value)
    end
end
