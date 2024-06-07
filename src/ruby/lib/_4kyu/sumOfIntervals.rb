def sum_of_intervals(intervals)
  return [] if intervals.empty?

  ranges = intervals.map { |start, end_point| (start..end_point) }.sort_by(&:begin)

  merged_ranges = [ranges[0]]

  ranges[1..-1].each do |current|
    last_merged = merged_ranges[-1]

    if last_merged.overlap?(current)
      merged_ranges[-1] = [last_merged.begin, current.begin].min..[last_merged.end, current.end].max
    else
      merged_ranges << current

    end
  end

  merged_ranges.sum { |range| range.end - range.begin }
end