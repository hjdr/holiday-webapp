require './app/models/holiday_countdown.rb'

describe HolidayCountdown do
  # let(:countdown) { HolidayCountdown.new }

  describe "#countdown" do
    it "prints the differences between two dates" do
      holiday_countdown = HolidayCountdown.new('19/09/2019')
      expect(holiday_countdown.countdown).to eq(71)
    end
  end
end