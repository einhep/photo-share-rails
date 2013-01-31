class ViewSessionsController < ApplicationController
  # GET /view_sessions
  # GET /view_sessions.json
  def index
    @view_sessions = ViewSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @view_sessions }
    end
  end

  # GET /view_sessions/1
  # GET /view_sessions/1.json
  def show
    @view_session = ViewSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @view_session }
    end
  end

  # GET /view_sessions/new
  # GET /view_sessions/new.json
  def new
    @view_session = ViewSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @view_session }
    end
  end

  # GET /view_sessions/1/edit
  def edit
    @view_session = ViewSession.find(params[:id])
  end

  # POST /view_sessions
  # POST /view_sessions.json
  def create
    @view_session = ViewSession.new(params[:view_session])

    respond_to do |format|
      if @view_session.save
        format.html { redirect_to @view_session, notice: 'View session was successfully created.' }
        format.json { render json: @view_session, status: :created, location: @view_session }
      else
        format.html { render action: "new" }
        format.json { render json: @view_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /view_sessions/1
  # PUT /view_sessions/1.json
  def update
    @view_session = ViewSession.find(params[:id])

    respond_to do |format|
      if @view_session.update_attributes(params[:view_session])
        format.html { redirect_to @view_session, notice: 'View session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @view_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /view_sessions/1
  # DELETE /view_sessions/1.json
  def destroy
    @view_session = ViewSession.find(params[:id])
    @view_session.destroy

    respond_to do |format|
      format.html { redirect_to view_sessions_url }
      format.json { head :no_content }
    end
  end
end
