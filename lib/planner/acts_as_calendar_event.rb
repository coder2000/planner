module Planner
  module ActsAsCalendarEvent
    def acts_as_calendar_event
      self.extend Planner::ActsAsCalendarEvent::ClassMethods
      self.class_eval do
        include Planner::ActsAsCalendarEvent::InstanceMethods
      end
    end

    module ClassMethods
      scope :get_events, lambda { |start_date, end_date|
        where("(? <= end_at) AND (start_at < ?)", end_date, start_date),
        order("start_at ASC")
      }
    end

    module InstanceMethods
      def days
        end_at.to_date - start_at.to_date
      end
    end
  end
end

