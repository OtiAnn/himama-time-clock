# == Schema Information
#
# Table name: clock_events
#
#  id                  :bigint(8)        not null, primary key
#  user_id             :bigint(8)
#  clock_event_type_id :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  clock_time          :datetime
#

require 'test_helper'

class ClockEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
