# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :verify, mutation: Mutations::Verify
  end
end
