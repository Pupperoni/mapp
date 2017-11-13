# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

######################################################################
# ACCIDENTS SECTION                                                  #
######################################################################

Dir.foreach('./lib/seeds/accidents') do |item|
  next if item == '.' or item == '..'

  csv_text = File.read(Rails.root.join('lib', 'seeds', 'accidents', item))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

  csv.each do |row|
    if Location.exists?(city: row['place_of_occurance'])
      loc = Location.where(city: row['place_of_occurance']).first.id
    else
      t = Location.new
      t.city = row['place_of_occurance']
      t.save
      loc = t.id
    end

    if Aircraft.exists?(aircraft_registration: row['aircraft_registration_or_model'])
      reg = Aircraft.where(aircraft_registration: row['aircraft_registration_or_model']).first.id
    else
      t = Aircraft.new
      t.aircraft_registration = row['aircraft_registration_or_model']
      t.craft_type = row['aircraft_type']
      t.save
      reg = t.id
    end

    ### Situation Table ###

    t = HasAccident.new
    t.aircraft_id = reg
    # t.situation_id = acc
    t.save

    t = HappenedAt.new
    # t.situation_id = acc
    t.location_id = loc
    t.save

    t = HappenedOn.new
    t.accident_date = row['date']
    #t.situation_id = acc
    t.save

    t = HasCasualty.new
    #t.situation_id = acc
    t.save

  end

end

######################################################################
# CARGO AND FREIGHT SECTION                                          #
######################################################################

Dir.foreach('./lib/seeds/cargo-freight') do |item|
  next if item == '.' or item == '..'

  csv_text = File.read(Rails.root.join('lib', 'seeds', 'cargo-freight', item))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

  csv.each do |row|

    


  end



end

######################################################################
# INFRASTRUCTURE                                                     #
######################################################################

Dir.foreach('./lib/seeds/infrastructure') do |item|
  next if item == '.' or item == '..'

  # csv_text = File.read(Rails.root.join('lib', 'seeds', 'infrastructure', item))
  # csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => 'ISO-8859-1:utf-8')

end

######################################################################
# ATMs                                                               #
######################################################################

Dir.foreach('./lib/seeds/atms') do |item|
  next if item == '.' or item == '..'

  # csv_text = File.read(Rails.root.join('lib', 'seeds', 'atms', item))
  # csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => 'ISO-8859-1:utf-8')

end
