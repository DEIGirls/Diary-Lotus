Lotus::Model.migration do
  change do
	create_table :users do
      primary_key :id
      column :email,      		String,   null: false
      column :password,     	String,   null: false
    end
  end
end
