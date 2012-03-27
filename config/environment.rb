# Load the rails application
require File.expand_path('../application', __FILE__)

# Override field to remove validation message
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  "#{html_tag}".html_safe
end

# Initialize the rails application
Depot::Application.initialize!
