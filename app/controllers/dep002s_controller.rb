class Dep002sController < ApplicationController
  before_action :set_dep002, only: [:show, :edit, :update, :destroy]

  # GET /dep002s
  # GET /dep002s.json
  def index
    @dep002s = Dep002.all
  end

  # GET /dep002s/1
  # GET /dep002s/1.json
  def show
  end

  # GET /dep002s/new
  def new
    @dep002 = Dep002.new
  end

  # GET /dep002s/1/edit
  def edit
  end

  # POST /dep002s
  # POST /dep002s.json
  def create
    @dep002 = Dep002.new(dep002_params)

    respond_to do |format|
      if @dep002.save
        format.html { redirect_to @dep002, notice: 'Dep002 was successfully created.' }
        format.json { render :show, status: :created, location: @dep002 }
      else
        format.html { render :new }
        format.json { render json: @dep002.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dep002s/1
  # PATCH/PUT /dep002s/1.json
  def update
    respond_to do |format|
      if @dep002.update(dep002_params)
        format.html { redirect_to @dep002, notice: 'Dep002 was successfully updated.' }
        format.json { render :show, status: :ok, location: @dep002 }
      else
        format.html { render :edit }
        format.json { render json: @dep002.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dep002s/1
  # DELETE /dep002s/1.json
  def destroy
    @dep002.destroy
    respond_to do |format|
      format.html { redirect_to dep002s_url, notice: 'Dep002 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dep002
      @dep002 = Dep002.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dep002_params
      params.require(:dep002).permit(:product_key, :name, :description, :picurl, :whole_sale, :retail_value)
    end
end
