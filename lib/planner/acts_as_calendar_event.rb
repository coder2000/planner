module Planner
  module ActsAsCalendarEvent
    def self.included(base)
      base.extend Planner::ActsAsCalendarEvent::ClassMethods
    end

    module ClassMethods
      def acts_as_calendar_event
        include Planner::ActsAsCalendarEvent::InstanceMethods
      end

      def get_events(current_month, first_day_of_week=0)
      end
    end

    module InstanceMethods

    end
  end
end

