class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.text :home_text_fr
      t.text :home_text_nl
      t.text :home_text_en
      t.string :concept_title_fr
      t.string :concept_title_nl
      t.string :concept_title_en
      t.text :concept_text_fr
      t.text :concept_text_nl
      t.text :concept_text_en
      t.string :step_one_title_fr
      t.string :step_one_title_nl
      t.string :step_one_title_en
      t.text :step_one_text_fr
      t.text :step_one_text_nl
      t.text :step_one_text_en
      t.string :step_two_title_fr
      t.string :step_two_title_nl
      t.string :step_two_title_en
      t.text :step_two_text_fr
      t.text :step_two_text_nl
      t.text :step_two_text_en
      t.string :step_three_title_fr
      t.string :step_three_title_nl
      t.string :step_three_title_en
      t.text :step_three_text_fr
      t.text :step_one_three_nl
      t.text :step_three_text_en
      t.string :step_four_title_fr
      t.string :step_four_title_nl
      t.string :step_four_title_en
      t.text :step_four_text_fr
      t.text :step_four_text_nl
      t.text :step_four_text_en

      t.timestamps null: false
    end
  end
end
