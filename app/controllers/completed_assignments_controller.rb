class CompletedAssignmentsController < ApplicationController
  # GET /completed_assignments
  # GET /completed_assignments.json
  def index
    @completed_assignments = CompletedAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @completed_assignments }
    end
  end

  # GET /completed_assignments/1
  # GET /completed_assignments/1.json
  def show
    @completed_assignment = CompletedAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @completed_assignment }
    end
  end

  # GET /completed_assignments/new
  # GET /completed_assignments/new.json
  def new
    @completed_assignment = CompletedAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @completed_assignment }
    end
  end

  # GET /completed_assignments/1/edit
  def edit
    @completed_assignment = CompletedAssignment.find(params[:id])
  end

  # POST /completed_assignments
  # POST /completed_assignments.json
  def create
    @completed_assignment = CompletedAssignment.new(params[:completed_assignment])

    respond_to do |format|
      if @completed_assignment.save
        format.html { redirect_to @completed_assignment, notice: 'Completed assignment was successfully created.' }
        format.json { render json: @completed_assignment, status: :created, location: @completed_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @completed_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /completed_assignments/1
  # PUT /completed_assignments/1.json
  def update
    @completed_assignment = CompletedAssignment.find(params[:id])

    respond_to do |format|
      if @completed_assignment.update_attributes(params[:completed_assignment])
        format.html { redirect_to @completed_assignment, notice: 'Completed assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @completed_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_assignments/1
  # DELETE /completed_assignments/1.json
  def destroy
    @completed_assignment = CompletedAssignment.find(params[:id])
    @completed_assignment.destroy

    respond_to do |format|
      format.html { redirect_to completed_assignments_url }
      format.json { head :no_content }
    end
  end
end
