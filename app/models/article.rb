class Article < ApplicationRecord
    validates :title, presence: true # La title veleur oblige l'usager à ne pas laisser vide le champs.
    validates :body, presence: true, length: { minimum: 10 } # La body veleur oblige l'usager à écrire miinimumm 10 caractères
end
