module Rone
  module Categorizable
    extend ActiveSupport::Concern

    included do
    end

    class_methods do
      def categorizable_on(categories = [], callable: false)
        if category_list.empty?
          @category_list = categories

          class_eval do
            validates_presence_of :category
            validates :category, inclusion: { in: category_list, 
                                            message: "%{value} is not a valid category"  }
          end
        end

        if callable
          category_list.each do |category|
            define_method("categorized_#{category}?") do
              self.send(:category) == category
            end
          end
        end
      end

      def category_list
        @category_list ||= []
      end
    end
  end
end
