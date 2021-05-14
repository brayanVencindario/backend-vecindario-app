class CreateProyectLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :proyect_leads do |t|


      t.timestamps
    end
  end
end
