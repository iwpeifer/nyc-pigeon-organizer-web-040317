def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  data.each do |category, stats|
    stats.each do |stat, name_array|
      name_array.each do |name|
        organized_pigeons[name] = {}
      end
    end
  end
  organized_pigeons.each do |name, stat_hash|
    stat_hash[:color] = []
    stat_hash[:gender] = []
    stat_hash[:lives] = []
    stat_hash.each do |cat, stat_array|
      data.each do |category, stats|
        stats.each do |stat, name_array|
          if name_array.include?(name)
            stat_hash[category] << stat.to_s
          end
        end
      end
    end
  end
  organized_pigeons.each do |name, stat_hash|
    stat_hash.each do |cat, stat_array|
      stat_array.uniq!
    end
  end
  organized_pigeons
end
