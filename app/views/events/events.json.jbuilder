# frozen_string_literal: true

# json.events  @events

json.events @events do |event|
  json.id event.id
  json.name event.name
  json.date event.date.strftime('%Y-%m')
end
