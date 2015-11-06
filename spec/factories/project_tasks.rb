FactoryGirl.define do
  factory :project_task do
    name "MyString"
description "MyText"
location "MyString"
plan_start "2015-10-29"
plan_end "2015-10-29"
actual_start "2015-10-29"
actual_end "2015-10-29"
task_value "9.99"
task_weight "9.99"
lat "MyString"
long "MyString"
project_stage_id 1
project_id 1
province_id 1
task_type 1
predecessor_id 1
  end

end
