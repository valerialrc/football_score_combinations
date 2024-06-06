require_relative '../../../lib/score_combinations'

module Mutations
  class Verify < BaseMutation
    argument :score, String, required: true

    field :combinations, Integer, null: false

    def resolve(score:)
      combinations = ScoreCombinations.split_scores(score)
      { combinations: combinations }
    end
  end
end
