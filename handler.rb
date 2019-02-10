require 'erb'

def handler event
  @person_email = event.query_params['person_email']&.split('@')&.first
  render html: ERB.new(File.read('thankyou.html')).result(binding)
end
