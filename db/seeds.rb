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
    # if Location.exists?(city: row['place_of_occurance'])
    #   loc = Location.where(city: row['place_of_occurance']).first.id
    # else
    #   t = Location.new
    #   t.city = row['place_of_occurance']
    #   t.save
    #   loc = t.id
    # end
    #
    # if Aircraft.exists?(aircraft_registration: row['aircraft_registration_or_model'])
    #   reg = Aircraft.where(aircraft_registration: row['aircraft_registration_or_model']).first.id
    # else
    #   t = Aircraft.new
    #   t.aircraft_registration = row['aircraft_registration_or_model']
    #   t.craft_type = row['aircraft_type']
    #   t.save
    #   reg = t.id
    # end
    #
    # t = Situation.new
    # t.accident_type = row['type_of_occurance']
    # t.report_type = row['report']
    # t.status = row['status']
    # t.save
    # acc = t.id
    # puts acc
  #
  #   t = HasAccident.new
  #   t.aircraft_id = reg
  #   # t.situation_id = acc
  #   t.save
  #
  #   t = HappenedAt.new
  #   # t.situation_id = acc
  #   t.location_id = loc
  #   t.save
  #
  #   t = HappenedOn.new
  #   t.accident_date = row['date']
  #   #t.situation_id = acc
  #   t.save
  #
  #   t = HasCasualty.new
  #   #t.situation_id = acc
  #   t.save
  #
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
    if Location.exists?(city: row['airport'])
      loc = Location.where(city: row['airport']).first.id
    else
      t = Location.new
      t.city = row['airport']
      t.save
      loc = t.id
      t = Airport.new
      t.location_id = loc
      t.save
      airp = t
    end

    if AirlineOperator.exists?(operator_name: row['airline_operator'])
      op = AirlineOperator.where(operator_name: row['airline_operator']).first.id
    else
      t = AirlineOperator.new
      t.operator_name = row['airline_operator']
      t.save
      op = t.id
    end

    t = ProgressReport.new
    t.airline_operators_id = op
    t.save

    t = LocatedIn.new
    t.locations_id = loc
    t.airports_id = airp
    t.save

    t = OperatesIn.new
    t.airline_operators_id = op
    t.locations_id = loc
    t.save

    t = ConsistsOf.new
    t.airline_operators_id = op
    t.airports_id = airp
    t.save!

  end

end

######################################################################
# INFRASTRUCTURE                                                     #
######################################################################

Dir.foreach('./lib/seeds/infrastructure') do |item|
  next if item == '.' or item == '..'

  csv_text = File.read(Rails.root.join('lib', 'seeds', 'infrastructure', item))
  csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => 'ISO-8859-1:utf-8')

  csv.each do |row|
    if Location.exists?(city: row['project_location'])
      loc = Location.where(city: row['project_location']).first.id
    else
      t = Location.new
      t.city = row['project_location']
      t.save
      loc = t.id
      t = Project.new
      t.location_id = loc
      t.pcost = row['project_cost']
      t.pdesc = row['project_description']
      t.save
      proj = t
    end

    if ImplementingOffice.exists?(office_name: row['implementing_office'])
      imof = ImplementingOffice.where(office_name: row['airline_operator']).first.id
    else
      t = ImplementingOffice.new
      t.office_name = row['implementing_office']
      t.save
      imof = t.id
    end

    if Contractor.exists?(cname: row['project_contractor'])
      imof = Contractor.where(cname: row['project_contractor']).first.id
    else
      t = Contractor.new
      t.cname = row['project_contractor']
      t.save
      contr = t.id
    end

    t = StartedOn.new
    t.project_start_date = row['contract_start_date']
    t.projects_id = proj
    t.save

    t = ImplementedBy.new
    t.projects_id = proj
    t.implementing_offices_id = imof
    t.save

    t = HandledBy.new
    t.projects_id = proj
    t.contractors_id = contr
    t.save

    t = BuiltIn.new
    t.projects_id = proj
    t.locations_id = loc
    t.save

    t = CompletedBy.new
    t.projects_id = proj
    t.project_end_date = row['actual_completion_year']+'/'+row['actual_completion_month']+'/01 00.00.00'
    t.save!

  end

end

######################################################################
# ATMs                                                               #
######################################################################

Dir.foreach('./lib/seeds/atms') do |item|
  next if item == '.' or item == '..'

  # csv_text = File.read(Rails.root.join('lib', 'seeds', 'atms', item))
  # csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => 'ISO-8859-1:utf-8')

end
