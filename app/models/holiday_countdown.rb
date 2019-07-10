require 'date'

class HolidayCountdown

  def initialize(date)
    @date = date
  end

  def countdown
    date_difference
  end

  private

  def date_difference
    (Date.parse(@date) - Date.parse(Time.now.strftime("%d/%m/%Y"))).to_i
  end
end
