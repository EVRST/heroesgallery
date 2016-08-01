class AddPresentationToVisuals < ActiveRecord::Migration
  def change
    add_column :visuals, :presentation_fr, :text
    add_column :visuals, :presentation_en, :text
    add_column :visuals, :presentation_nl, :text
  end
end
