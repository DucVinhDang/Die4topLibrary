ActiveAdmin.register BooksAuthorsJoin do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

permit_params :book_id, :author_id

menu if: proc{ can? :update, BooksAuthorsJoin }

index do
	selectable_column
		column :id
	    column "Book_id", :book_id
	    column "Author_id", :author_id
    actions
end

end
