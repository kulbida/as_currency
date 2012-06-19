module AsCurrency

  def self.included(parent)
    parent.extend InstanceMethods
  end

  module InstanceMethods

    def as_currency(*fields)
      fields.each do |field|
        define_method :"#{field}_as_currency" do
          "$%.2f" % self.send(field.to_s)
        end
      end
    end

  end

end

module ActiveRecord

  include AsCurrency

end
