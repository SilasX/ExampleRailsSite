class ArgumentNodesController < ApplicationController
  # GET /argument_nodes
  # GET /argument_nodes.json
  def index
    @argument_nodes = ArgumentNode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @argument_nodes }
    end
  end

  # GET /argument_nodes/1
  # GET /argument_nodes/1.json
  def show
    @argument_node = ArgumentNode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @argument_node }
    end
  end

  # GET /argument_nodes/new
  # GET /argument_nodes/new.json
  def new
    @argument_node = ArgumentNode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @argument_node }
    end
  end

  # GET /argument_nodes/1/edit
  def edit
    @argument_node = ArgumentNode.find(params[:id])
  end

  # POST /argument_nodes
  # POST /argument_nodes.json
  def create
    @argument_node = ArgumentNode.new(params[:argument_node])

    respond_to do |format|
      if @argument_node.save
        format.html { redirect_to @argument_node, notice: 'Argument node was successfully created.' }
        format.json { render json: @argument_node, status: :created, location: @argument_node }
      else
        format.html { render action: "new" }
        format.json { render json: @argument_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /argument_nodes/1
  # PUT /argument_nodes/1.json
  def update
    @argument_node = ArgumentNode.find(params[:id])

    respond_to do |format|
      if @argument_node.update_attributes(params[:argument_node])
        format.html { redirect_to @argument_node, notice: 'Argument node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @argument_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /argument_nodes/1
  # DELETE /argument_nodes/1.json
  def destroy
    @argument_node = ArgumentNode.find(params[:id])
    @argument_node.destroy

    respond_to do |format|
      format.html { redirect_to argument_nodes_url }
      format.json { head :no_content }
    end
  end
end
