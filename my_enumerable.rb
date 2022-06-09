module MyEnumerable
  def all?
    boolean = true
    each do |n|
      boolean = false unless yield n
    end
    boolean
  end

  def any?
    boolean = false
    each do |n|
      boolean = true if yield n
    end
    boolean
  end

  def filter
    array_filtered = []
    each do |n|
      array_filtered.push(n) if yield n
    end
    array_filtered
  end
end
