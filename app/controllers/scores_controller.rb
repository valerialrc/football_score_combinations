require_relative '../../lib/scores_combinations'

class ScoresController < ApplicationController
  def verify
    score = params[:score]
    combinations = ScoreCombinations.calculate_combinations(score)
    render json: { combinations: combinations }
  end
end
