class SchoolController < ApplicationController
  layout 'admin'
  def index
    @schools = School.all
  end
  def new
    @school = School.new
  end
  def create
    school = School.new(params[:school])

    respond_to do |format|
      if school.save
        format.html { redirect_to :action => 'index', notice: 'School added successfully.' }
        format.json { render json: school, status: :created }
      else
        format.html { redirect_to :action=>"index", notice:"School addition failed." }
        format.json { render json: school.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @school = School.find(params[:id].to_i)
  end

  def update
    school = School.find(params[:id].to_i)
    school.update_attributes(params[:school])

    respond_to do |format|
      if school.save
        format.html { redirect_to :action => 'index', notice: 'School details updated successfully.' }
        format.json { render json: school, status: :created }
      else
        format.html { redirect_to :action=>"index", notice:"School details update failed." }
        format.json { render json: school.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
  end

  def show
    @school = School.find(params[:id].to_i)
  end
end
