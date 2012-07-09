class CreateOutputSurveys < ActiveRecord::Migration
  def up
    create_table :output_surveys do |t|
    	t.boolean :use_collab_tool
    	t.string :use_one_of_collab_tools
    	t.text :using_another_collab_tool
    	t.integer :pleased_with_collab_tool
    	t.string :using_one_of_tools 
    	t.string :desired_tool
    	t.integer :rate_onespark
    	t.integer :private_censure_onespark
    	t.text :lack_in_own_pm
    	t.string :age
    	t.integer :activity
    	
      t.timestamps
    end
  end

  def down
  	drop_table :output_surveys
  end
end
