# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    
    field :create_todo, Types::TodoType, null: false, description: 'Create a todo' do
      argument :title, String, required: true
    end
  
    field :update_todo, Types::TodoType, null: false, description: 'Update a todo' do
      argument :id, ID, required: true
      argument :completed, Boolean, required: true
    end
  
    field :delete_todo, Boolean, null: false, description: 'Delete a todo' do
      argument :id, ID, required: true
    end
  
    def create_todo(title:)
      Todo.create!(title: title, completed: false)
    end
  
    def update_todo(id:, completed:)
      todo = Todo.find(id)
      todo.update(completed: completed)
      todo
    end
  
    def delete_todo(id:)
      Todo.find(id).destroy
      true # Indicate successful deletion
    end
  
  end
end
