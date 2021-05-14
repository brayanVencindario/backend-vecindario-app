class AddLeadToProyectLead < ActiveRecord::Migration[6.1]
  def change
    add_reference :proyect_leads, :lead, null: false, foreign_key: true
  end
end
