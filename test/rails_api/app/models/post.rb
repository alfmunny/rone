class Post < ApplicationRecord
  categorizable_on %w(sell rent), callable: true
end
