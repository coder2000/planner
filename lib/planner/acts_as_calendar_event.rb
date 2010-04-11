module Planner
  module ActsAsCalendarEvent
    def acts_as_calendar_event
      self.extend Planner::ActsAsCalendarEvent::ClassMethods
      self.class_eval do
        include Planner::ActsAsCalendarEvent::InstanceMethods
      end
    end

    module ClassMethods
      def get_events(start_date, end_date)
        self.where("(? <= end_at) AND (start_at < ?)", start_date.to_time.utc, end_date.to_time.utc).order("start_at ASC")
      end
    end

    module InstanceMethods
      def days
        end_at.to_date - start_at.to_date
      end
    end
  end
end

