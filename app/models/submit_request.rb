class SubmitRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
  belongs_to :request_user, class_name: 'User', foreign_key: 'request_user_id'
  validates :user_id, :task_id, :request_user_id, presence: true
  validate :no_repeated_request, on: :create
  enum status: {未着手:0, 対応中:1, 完了:2}

  private
  def no_repeated_request
    submit_request = SubmitRequest.where(task_id: task_id, status: 1)
    errors.add(:base, "このタスクは既に依頼を出しています。") unless submit_request.blank?
  end
end
