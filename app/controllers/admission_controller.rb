class AdmissionController < ApplicationController
  layout 'admin'
  before_filter :authenticate_user!,:except=>['add']
  def create
    admission_form = AdmissionForm.new(params[:admission_form])

    respond_to do |format|
      if admission_form.save!
        format.html { redirect_to :action=>'add', notice: 'Admission request successfully submitted.' }
        format.json { render json: admission_form, status: :created }
      else
        format.html { redirect_to :action=>"add", notice:"Admission request submission failed." }
        format.json { render json: admission_form.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    @admission = AdmissionForm.find(params[:id].to_i)
    @admission.status = params[:admission_form][:status]

    respond_to do |format|
      if @admission.save
        format.html { redirect_to :action => 'index', notice: 'Admission request updated successfully.' }
        format.json { render json: @admission, status: :created }
      else
        format.html { redirect_to :action=>"index", notice:"Admission request update failed." }
        format.json { render json: admission_form.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
  end

  def archive
  end

  def show
    @admission = AdmissionForm.find(params[:id])
  end

  def index
    @admissions = AdmissionForm.pending
  end

  def accepted
    @admissions = AdmissionForm.accepted
    render 'index'
  end

  def archived
    @admissions = AdmissionForm.archived
    render 'index'
  end

  def rejected
    @admissions = AdmissionForm.archived
    render 'index'
  end

  def add
    @admission = AdmissionForm.new
  end
end
