class Gift < ApplicationRecord
  belongs_to :guest, optional: true
end
