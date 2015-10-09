class GroupAdjsController < ApplicationController
  before_action :set_group_adj, only: [:show, :edit, :update, :destroy]

  # GET /group_adjs
  # GET /group_adjs.json
  def index
    @group_adjs = GroupAdj.all
  end

  # GET /group_adjs/1
  # GET /group_adjs/1.json
  def show
  end

  # GET /group_adjs/new
  def new
    @group_adj = GroupAdj.new
  end

  # GET /group_adjs/1/edit
  def edit
  end

  # POST /group_adjs
  # POST /group_adjs.json
  def create
    @group_adj = GroupAdj.new(group_adj_params)

    respond_to do |format|
      if @group_adj.save
        format.html { redirect_to @group_adj, notice: 'Group adj was successfully created.' }
        format.json { render :show, status: :created, location: @group_adj }
      else
        format.html { render :new }
        format.json { render json: @group_adj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_adjs/1
  # PATCH/PUT /group_adjs/1.json
  def update
    respond_to do |format|
      if @group_adj.update(group_adj_params)
        format.html { redirect_to @group_adj, notice: 'Group adj was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_adj }
      else
        format.html { render :edit }
        format.json { render json: @group_adj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_adjs/1
  # DELETE /group_adjs/1.json
  def destroy
    @group_adj.destroy
    respond_to do |format|
      format.html { redirect_to group_adjs_url, notice: 'Group adj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_adj
      @group_adj = GroupAdj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_adj_params
      params.require(:group_adj).permit(:name, :adj_id)
    end
end
