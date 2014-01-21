module Titlable
  extend ActiveSupport::Concern

  module ClassMethods
    def head_title title, options = {}
      before_action options do |controller| # rails3 以前は before_filter
        controller.head_title title
      end
    end
  end

  def head_title title
    @head_title = title
  end
end
