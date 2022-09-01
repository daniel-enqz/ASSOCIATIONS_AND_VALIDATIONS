class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  validates :last_name, length: { minimum: 3 }
  validates :email, format: { with: /\A.*@.*\.com\z/ }
end

# rake db:drop / Drop the database
# rake db:create / Create the database
# rake db:migrate / Create the tables
# rake db:timestamp / Create the timestamp for naming your migration files
# rake console / Open the console and interact with your database/application
