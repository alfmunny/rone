class RoneAddCategoryTo<%= table_name.camelize %> < ActiveRecord::Migration[7.0]
  def change
    add_column :<%= table_name %>, <%= category_type_name %>
  end
end
