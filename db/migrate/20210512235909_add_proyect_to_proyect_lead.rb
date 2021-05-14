class AddProyectToProyectLead < ActiveRecord::Migration[6.1]
  def change
    add_reference :proyect_leads, :proyect, null: false, foreign_key: true
  end
end
