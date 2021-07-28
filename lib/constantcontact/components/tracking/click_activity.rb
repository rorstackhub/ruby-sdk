#
# click_activity.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class ClickActivity < Component
      attr_accessor :activity_type, :campaign_id, :contact_id, :email_address, :link_id, :click_date

      # Factory method to create a ClickActivity object from an array
      # @param [Hash] props - properties to create object from
      # @return [ClickActivity]
      def self.create(props)
        obj = ClickActivity.new
        if props
          props.each do |key, value|
            obj.send("#{key}=", value) if obj.respond_to? key
          end
        end
        obj
      end
    end
  end
end