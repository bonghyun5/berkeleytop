class AddStatusAndUserAndCommentToContactInfos < ActiveRecord::Migration
  def change
    add_column :contact_infos, :status, :string, default: "Not Contacted"
    add_column :contact_infos, :user, :integer
    add_column :contact_infos, :comment, :text
  end
end
