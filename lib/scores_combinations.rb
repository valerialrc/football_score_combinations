class ScoreCombinations
  def self.calculate_combinations(score)
    scores = score.split('x').map(&:to_i)
    team1_combinations = combinations(scores[0])
    team2_combinations = combinations(scores[1])
    team1_combinations * team2_combinations
  end

  def self.combinations(points)
    return 0 if points.negative?

    dp = Array.new(points + 1, 0)
    dp[0] = 1

    (1..points).each do |i|
      dp[i] += dp[i - 3] if i >= 3
      dp[i] += dp[i - 6] if i >= 6 && i % 6 == 0
      dp[i] += dp[i - 7] if i >= 7
    end

    dp[points]
  end
end
