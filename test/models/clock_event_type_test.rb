# == Schema Information
#
# Table name: clock_event_types
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ClockEventTypeTest < ActiveSupport::TestCase
  test "should not save type without name" do
    type = ClockEventType.new
    assert_not type.save
  end
end
