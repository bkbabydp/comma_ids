require "comma_ids/version"

module CommaIds
  if defined? Rails::Railtie
    require 'comma_ids/railtie'
  elsif defined? Rails::Initializer
    raise "comma_ids is not compatible with Rails 2.3 or older"
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def comma_ids(association)
      define_method("comma_#{association}_ids=") do |comma_seperated_ids|
        self.send("#{association}_ids=", comma_seperated_ids.to_s.split(","))
      end

      define_method("comma_#{association}_ids") do
        send("#{association}_ids").join(",")
      end
    end
  end
end
