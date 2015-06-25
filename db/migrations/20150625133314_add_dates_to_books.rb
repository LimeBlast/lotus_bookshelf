Lotus::Model.migration do
  change do
    alter_table :books do
      add_column :created_at, DateTime, null: false
      add_column :updated_at, DateTime, null: false
    end
  end
end
