class Bank < ApplicationRecord
  has_many :accounts,
    after_add: proc {|bank, account|
      pp [bank, account]
    },
end
