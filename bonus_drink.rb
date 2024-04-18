class BonusDrink
  BOTTLE_COUNT_REQUIRED_FOR_BONUS = 3

  def self.total_count_for(purchased_count)
    current_total = purchased_count
    bonus_count = 0

    while current_total >= BOTTLE_COUNT_REQUIRED_FOR_BONUS do
      current_total += (1 - BOTTLE_COUNT_REQUIRED_FOR_BONUS)
      bonus_count += 1
    end

    purchased_count + bonus_count
  end
end
