# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  text        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
class AnswerChoice < ApplicationRecord

  has_many :responses,
    foreign_key: :answer_choice_id,
    class_name: :Response

  belongs_to :question,
    foreign_key: :question_id,
    class_name: :Question

end
