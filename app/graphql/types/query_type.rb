# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    field :todos, [Types::TodoType], null: false, description: 'Returns all todos'
  
    field :todo, Types::TodoType, null: true, description: 'Returns a todo by ID' do
      argument :id, ID, required: true
    end
  
    def todos
      Todo.all
    end
  
    def todo(id:)
      Todo.find_by(id: id)
    end

  end
end
