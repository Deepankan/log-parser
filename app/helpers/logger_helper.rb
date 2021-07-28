module LoggerHelper
  def get_detail_log(value)
    max_ip_used = value.max_by { |i| value.count(i) }

    { total_count: value.count, uniq_count: value.uniq.count, max_ip_used: max_ip_used, max_ip_used_count: value.count(max_ip_used) }
  end
end
