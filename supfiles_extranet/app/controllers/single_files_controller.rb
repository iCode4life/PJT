class SingleFilesController < ApplicationController
  before_action :set_single_file, only: [:show, :edit, :update, :destroy]

  # GET /single_files
  # GET /single_files.json
  def index
    @single_files = SingleFile.all
  end

  # GET /single_files/1
  # GET /single_files/1.json
  def show
  end

  # GET /single_files/new
  def new
    @single_file = SingleFile.new
  end

  # GET /single_files/1/edit
  def edit
  end

  # POST /single_files
  # POST /single_files.json
  def create
    @single_file = SingleFile.new(single_file_params)

    respond_to do |format|
      if @single_file.save
        format.html { redirect_to @single_file.repository, notice: 'Single file was successfully created.' }
        format.json { render :show, status: :created, location: @single_file }
      else
        format.html { render :new }
        format.json { render json: @single_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_files/1
  # PATCH/PUT /single_files/1.json
  def update
    respond_to do |format|
      if @single_file.update(single_file_params)
        format.html { redirect_to @single_file, notice: 'Single file was successfully updated.' }
        format.json { render :show, status: :ok, location: @single_file }
      else
        format.html { render :edit }
        format.json { render json: @single_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_files/1
  # DELETE /single_files/1.json
  def destroy
    repository = @single_file.repository
    @single_file.destroy
    respond_to do |format|
      format.html { redirect_to repository, notice: 'Single file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_single_file
    @single_file = SingleFile.find(params[:id])
  end

  def single_file_params
    params.each { |pa| p pa}
    params.require(:single_file).permit(:name, :repository_id, :file_file)
  end
end
