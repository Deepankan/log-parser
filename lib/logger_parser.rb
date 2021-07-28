class LoggerParser
  def self.parse_log(log_data)
    results = {}
    log_data.each do |data|
      value = data.split(' ')
      results[value.first] = results[value.first].present? ? results[value.first] << value.last : [] << value.last
    end

    results
  end
end