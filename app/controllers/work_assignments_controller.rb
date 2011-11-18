class WorkAssignmentsController < ApplicationController
  # GET /work_assignments
  # GET /work_assignments.json
  def index
    @work_assignments = WorkAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_assignments }
    end
  end

  # GET /work_assignments/1
  # GET /work_assignments/1.json
  def show
    @work_assignment = WorkAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_assignment }
    end
  end

  # GET /work_assignments/new
  # GET /work_assignments/new.json
  def new
    @work_assignment = WorkAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_assignment }
    end
  end

  # GET /work_assignments/1/edit
  def edit
    @work_assignment = WorkAssignment.find(params[:id])
  end

  # POST /work_assignments
  # POST /work_assignments.json
  def create
    @work_assignment = WorkAssignment.new(params[:work_assignment])

    respond_to do |format|
      if @work_assignment.save
        format.html { redirect_to @work_assignment, notice: 'Work assignment was successfully created.' }
        format.json { render json: @work_assignment, status: :created, location: @work_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @work_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_assignments/1
  # PUT /work_assignments/1.json
  def update
    @work_assignment = WorkAssignment.find(params[:id])

    respond_to do |format|
      if @work_assignment.update_attributes(params[:work_assignment])
        format.html { redirect_to @work_assignment, notice: 'Work assignment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_assignments/1
  # DELETE /work_assignments/1.json
  def destroy
    @work_assignment = WorkAssignment.find(params[:id])
    @work_assignment.destroy

    respond_to do |format|
      format.html { redirect_to work_assignments_url }
      format.json { head :ok }
    end
  end
end
