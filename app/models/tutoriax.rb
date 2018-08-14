class Tutoriax < ApplicationRecord
  belongs_to :estudiante
  belongs_to :profesor
  belongs_to :materiax
  belongs_to :lugar
end
