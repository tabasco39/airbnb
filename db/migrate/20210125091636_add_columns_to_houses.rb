class AddColumnsToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :nom, :string
    add_column :houses, :prenom, :string
    add_column :houses, :adresse, :string
    add_column :houses, :mail, :string
    add_column :houses, :contact, :integer
    add_column :houses, :categorie, :string
    add_column :houses, :nombre_de_chambre, :integer
    add_column :houses, :localisation, :string
    add_column :houses, :prix, :integer
    
  end
end
