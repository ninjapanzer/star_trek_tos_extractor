CSV.open("cast_by_ep.csv", "wb") do |csv|
  csv << ["actor", "character", "season", "episode"]
  Episode.order(:season,:number).each do |ep|
    ep.cast.each do |cast|
      csv << [cast.full_name, cast.character_name, ep.season, ep.number]
    end
  end
end
