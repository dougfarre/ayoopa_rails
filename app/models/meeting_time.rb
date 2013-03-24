class MeetingTime < ActiveRecord::Base
  attr_accessible :user_meeting_location_id, :start_time, :end_time
  attr_accessible :mon, :tue, :wed, :thu, :fri, :sat, :sun    

  belongs_to :user_meeting_location, :inverse_of => :meeting_times
 
  validates_presence_of :user_meeting_location 
   
  validates :start_time,  :presence => true
  validates :end_time,    :presence => true

  validate  :weekday_present, :correct_times

  def to_s
    string = '' 
    Date::DAYNAMES.each do |d_name|
       string << d_name[0..2].downcase + ", " if self.send(d_name[0..2].downcase) == true
    end
    string = string[0..-3] 
    string << " from " + self.start_time.strftime("%-I:%M%p") + " to " + self.end_time.strftime("%I:%M%p")
  end
  
  private
  
  def weekday_present
    errors.add :base, "You must select at least one day in one of your entries below." unless
    check_weekdays
  end
  
  def correct_times
    errors.add :base, "Your end time must come after your start time." unless
    check_times 
  end
  
  def check_weekdays
    Date::DAYNAMES.each do |d_name|
      return true if self.send(d_name[0..2].downcase) == true
    end
    
    return false
  end

  def check_times
    return true if self.end_time > self.start_time
    return false
  end
end
