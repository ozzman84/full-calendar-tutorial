// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require moment 
//= require fullcalendar

import "@hotwired/turbo-rails"
import "controllers"

$('#calendar').fullCalendar({});