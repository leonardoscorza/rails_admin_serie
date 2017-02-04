class User < ApplicationRecord
  enum kind: [:salesman, :manager]
  enum status: [:active, :inactive]
  has_many :comissions
  has_many :addresses
  has_many :clients
  has_many :product_quantities
  has_many :sales
end
