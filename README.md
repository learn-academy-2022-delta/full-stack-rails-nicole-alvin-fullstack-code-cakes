class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end

$ rails c

3.0.0 :002 > Blog.all
  Blog Load (0.6ms)  SELECT "blogs".* FROM "blogs"
 =>                                                         
[#<Blog:0x0000000105e6a8d8                                  
  id: 1,                                                    
  title: "If this week could be over today",                
  content:                                                  
   "In other news, shots all weekend with no limes. Get lit responsibly. Do not forget to finish those assessments. They are ALWAYS due by Monday morning. This is our last one as we know it.",
  created_at: Wed, 20 Jul 2022 18:09:11.159063000 UTC +00:00,
  updated_at: Wed, 20 Jul 2022 18:09:11.159063000 UTC +00:00>] 

  exit

  $ rails g controller Home

