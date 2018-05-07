class Repository < ApplicationRecord
  belongs_to :repository
  has_many :repositories, dependent: :destroy
  has_many :single_files, dependent: :destroy

  def breadcrumbs_trail
    repository = self
    breadcrumbs_trail = [repository]
    # while !node.id.eql?(1) && node.meeting.eql?(nil) do
    until repository.id.eql?(1) do
      breadcrumbs_trail.prepend(repository.repository)
      repository = repository.repository
    end
    breadcrumbs_trail
  end
end
