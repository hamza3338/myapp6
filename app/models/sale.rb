class Sale < ApplicationRecord
  belongs_to :client,   inverse_of: :sales
end