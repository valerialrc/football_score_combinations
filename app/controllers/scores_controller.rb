require_relative '../../lib/score_combinations'

class ScoresController < ApplicationController
  def verify
    score = params[:score]
    combinations = ScoreCombinations.split_scores(score)
    render json: { combinations: combinations }
  end
end
