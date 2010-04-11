require 'active_record'
require 'action_view'

require 'planner/acts_as_calendar_event'

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Planner::ActsAsCalendarEvent
end

