class ArgumentConnectionsController < ApplicationController
	# GET /argument_connections
  # GET /argument_connections.json
  def index
    @argument_connections = ArgumentConnection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @argument_connections }
    end
  end

  # GET /argument_connections/1
  # GET /argument_connections/1.json
  def show
    @argument_connection = ArgumentConnection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @argument_connection }
    end
  end

  # GET /argument_connections/new
  # GET /argument_connections/new.json
  def new
    @argument_connection = ArgumentConnection.new
    @argument_nodes = ArgumentNode.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @argument_connection }
    end
  end

  # GET /argument_connections/1/edit
  def edit
    @argument_connection = ArgumentConnection.find(params[:id])
  end

  # POST /argument_connections
  # POST /argument_connections.json
  def create
    @argument_connection = ArgumentConnection.new(params[:argument_connection])

    respond_to do |format|
      if @argument_connection.save
        format.html { redirect_to @argument_connection, notice: 'Argument connection was successfully created.' }
        format.json { render json: @argument_connection, status: :created, location: @argument_connection }
      else
        format.html { render action: "new" }
        format.json { render json: @argument_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /argument_connections/1
  # PUT /argument_connections/1.json
  def update
    @argument_connection = ArgumentConnection.find(params[:id])

    respond_to do |format|
      if @argument_connection.update_attributes(params[:argument_connection])
        format.html { redirect_to @argument_connection, notice: 'Argument connection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @argument_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /argument_connections/1
  # DELETE /argument_connections/1.json
  def destroy
    @argument_connection = ArgumentConnection.find(params[:id])
    @argument_connection.destroy

    respond_to do |format|
      format.html { redirect_to argument_connections_url }
      format.json { head :no_content }
    end
  end
end
