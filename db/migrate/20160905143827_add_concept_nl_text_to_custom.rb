class AddConceptNlTextToCustom < ActiveRecord::Migration
  def change
    add_column :customs, :step_three_text_nl, :text
  end
end
