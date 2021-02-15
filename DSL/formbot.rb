require 'ostruct'

def send_mail(to:, from:, subject:, body:)
  puts "Sending mail to: #{to}"
  puts "From: #{from}"
  puts "Subject: #{subject}"
  puts "Body: #{body}"
end

module FormBot
  extend self

  def visit(url, &block)
    puts "Visiting #{url}"
    instance_eval(&block)
    # TODO: add logic for visiting url
	end
	
  def in_form(form_name)
    puts "Found form #{form_name}"
    # TODO: add logic for finding form
	end

  def fill_in(field_name, with:)
    puts "Filling in #{field_name} with #{with}"
    # TODO: add logic for filling in form field
  end

  def select_from(field_name, value:)
    puts "Selecting #{value} from #{field_name}"
    # TODO: add logic for selecting form field
  end

  def submit
    # Here we are faking a failed response 
    # after the form has been submitted

    response = OpenStruct.new(failure: true, errors: ['error1'])
    yield response if block_given?
    
    # TODO: add logic for submitting form
  end
end

FormBot.visit 'https://tassktracker.herokuapp.com/users/sign_up' do
  in_form 'Registration'

  fill_in 'email', with: 'Jack'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password'


  

  submit do |response|
    if response.failure
      send_mail to: 'admin@tassktracker.com',
                from: 'formbot@tassktracker.com',
                subject: 'Failed to submit form',
                body: response.errors
    end
  end
end