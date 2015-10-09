class AdjsController < ApplicationController
  before_action :set_adj, only: [:show, :edit, :update, :destroy]

  # GET /adjs
  # GET /adjs.json
  def index
    @adjs = Adj.all
  end

  # GET /adjs/1
  # GET /adjs/1.json
  def show
  end

  # GET /adjs/new
  def new
    @adj = Adj.new
    @collection = Adj.all
  end

  # GET /adjs/1/edit
  def edit
  end

  # POST /adjs
  # POST /adjs.json
  def create
    @adj = Adj.new(adj_params)

    respond_to do |format|
      if @adj.save
        format.html { redirect_to @adj, notice: 'Adj was successfully created.' }
        format.json { render :show, status: :created, location: @adj }
      else
        format.html { render :new }
        format.json { render json: @adj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adjs/1
  # PATCH/PUT /adjs/1.json
  def update
    respond_to do |format|
      if @adj.update(adj_params)
        format.html { redirect_to @adj, notice: 'Adj was successfully updated.' }
        format.json { render :show, status: :ok, location: @adj }
      else
        format.html { render :edit }
        format.json { render json: @adj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adjs/1
  # DELETE /adjs/1.json
  def destroy
    @adj.destroy
    respond_to do |format|
      format.html { redirect_to adjs_url, notice: 'Adj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adj
      @adj = Adj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adj_params
      params.require(:adj).permit(:name)
    end
end
