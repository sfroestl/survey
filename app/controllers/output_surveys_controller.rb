class OutputSurveysController < ApplicationController

  # application_controller.rb
  before_filter :authenticate, except: [:new, :create]


  # GET /output_output_surveys
  # GET /output_output_surveys.json
  def index
    @output_surveys = OutputSurvey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @output_surveys }
    end
  end

  # GET /output_surveys/1
  # GET /output_surveys/1.json
  def show
    @output_survey = OutputSurvey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @output_survey }
    end
  end

  # GET /output_surveys/new
  # GET /output_surveys/new.json
  def new
    @output_survey = OutputSurvey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @output_survey }
    end
  end

  # POST /output_surveys
  # POST /output_surveys.json
  def create
    Rails.logger.info "# >> Survey: #{params[:output_survey]}"

    # concad checkbox values
    collab_tools = params[:use_one_of_collab_tools].join(", ")
    Rails.logger.info ">> Collab Tools #{collab_tools}"
    params[:output_survey][:use_one_of_collab_tools] = collab_tools

    tools = params[:using_one_of_tools].join(", ")
    Rails.logger.info ">> Tools #{tools}"
    params[:output_survey][:using_one_of_tools] = tools

    @output_survey = OutputSurvey.new(params[:output_survey])
    respond_to do |format|
      if @output_survey.save
        format.html { redirect_to 'index', notice: 'Output output_survey was successfully created.' }
        format.json { render json: @output_survey, status: :created, location: @output_survey }
      else
        format.html { render action: "new" }
        format.json { render json: @output_survey.errors, status: :unprocessable_entity }
      end
    end
  end

 protected

def authenticate
  authenticate_or_request_with_http_basic do |username, password|
    username == "foo" && password == "bar"
  end
end
end
