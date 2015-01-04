module CommaIds
  class Railtie < Rails::Railtie
    initializer 'comma_ids.insert_into_active_record' do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send(:include, CommaIds)
      end
    end
  end
end