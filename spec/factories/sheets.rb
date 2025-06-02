FactoryBot.define do
  factory :sheet do
    sequence(:column) { |n| ((n - 1) % 5) + 1 }
    sequence(:row) { |n| %w[a b c][((n - 1) / 5) % 3] }
  end
end
