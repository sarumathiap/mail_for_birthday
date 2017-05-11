class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  # GET /reminders
  # GET /reminders.json
  def index
    @reminders = Reminder.all

    #@bday = Reminder.find(:conditions => ["DAY(date_of_birth) = ? AND MONTH(date_of_birth) = ?", Date.today.day, Date.today.month])
    #@show = Reminder.find_by(params[:reminder_id]).birthday_today?
  end

  # GET /reminders/1
  # GET /reminders/1.json
  def show
    
  end

  # GET /reminders/new
  def new
    @reminder = Reminder.new
  end

  # GET /reminders/1/edit
  def edit
  end

  # POST /reminders
  # POST /reminders.json
  def create
    @reminder = Reminder.new(reminder_params)

    respond_to do |format|
     
        
        
         #@reminders.each do |reminder|
         if @reminder.save
    
        format.html { redirect_to @reminder, notice: 'Reminder was successfully created.' }
        format.json { render :show, status: :created, location: @reminder }
      else
        format.html { redirect_to new_reminder_path }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    
    end
  
  end

  # PATCH/PUT /reminders/1
  # PATCH/PUT /reminders/1.json
  def update
    respond_to do |format|
      if @reminder.update(reminder_params)
          
        format.html { redirect_to @reminder, notice: 'Reminder was successfully updated.' }
        format.json { render :show, status: :ok, location: @reminder }
      else
        format.html { render :edit }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reminders/1
  # DELETE /reminders/1.json
  def destroy
    @reminder.destroy
    respond_to do |format|
      format.html { redirect_to reminders_url, notice: 'Reminder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
def add

 @reminder = Reminder.find(params[:id])
 if @reminder.date_of_birth.strftime('%d-%m') == Date.today.strftime('%d-%m')
    UserMailer.welcome_email(@reminder).deliver
  redirect_to @reminder, notice: 'Email was successfully sent.'
   end
 
 end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reminder
      @reminder = Reminder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reminder_params
      params.require(:reminder).permit(:name, :email, :date_of_birth)
    end
end
