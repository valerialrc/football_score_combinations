class ScoreCombinations
  def self.find_combinations(target, numbers, start_index = 0, current_combination = [], all_combinations = [])
    # Se a soma da combinação atual for igual ao alvo, armazena a combinação
    if current_combination.sum == target
      all_combinations << current_combination.dup
      return
    end
  
    # Retorna se a soma da combinação atual for maior que o alvo
    return if current_combination.sum > target
  
    # Tenta adicionar cada número na lista de números à combinação atual a partir do índice atual
    (start_index...numbers.length).each do |i|
      current_combination << numbers[i]
      find_combinations(target, numbers, i, current_combination, all_combinations)
      current_combination.pop
    end
    all_combinations.length
  end
  
  def self.combinations_summing_to_x(x)
    numbers = [3, 6, 7, 8]
    find_combinations(x, numbers)
  end

  def self.split_scores(score)
    scores = score.split('x').map(&:to_i)
    team1_combinations = combinations_summing_to_x(scores[0])
    team2_combinations = combinations_summing_to_x(scores[1])
    team1_combinations * team2_combinations
  end
end
