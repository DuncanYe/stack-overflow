class AddQuestionUpvoteCountToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :question_upvotes_count, :integer, default: 0
  end
end
