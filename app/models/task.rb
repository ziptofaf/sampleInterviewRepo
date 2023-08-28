class Task < ApplicationRecord
  belongs_to :team, optional: true
end
