class OutputSurvey < ActiveRecord::Base
  Assessment = {'sehr zufrieden' => 1, 'zufrieden' => 2, 'teilweise zufrieden' => 3, 'unzufrieden' => 4, 'sehr unzufrieden' => 5 }
  Rate = {'sehr gut' => 1, 'gut' => 2, 'mittel' => 3, 'schlecht' => 4, 'sehr schlecht' => 5 }
  Activity = { 'Student Fachrichtung Informatik' => 1, 'Student anderer Fachrichtungen'=> 2, "Selbststaendiger" => 3, 'Angestellter mit Projektmanagementbezug' => 4, 'Angestellter ohne Projektmanagementbezug
' => 5, 'Sonstiges' => 0}

  attr_accessible :use_collab_tool, 
  :use_one_of_collab_tools,
  :using_another_collab_tool,
  :pleased_with_collab_tool,
  :using_one_of_tools,
  :desired_tool,
  :rate_onespark,
  :private_censure_onespark,
  :lack_in_own_pm,
  :age,
  :activity


  validates :pleased_with_collab_tool,
  :use_one_of_collab_tools,
  :using_one_of_tools,
  :rate_onespark,
  :age,
  :activity, presence: true
  
end
