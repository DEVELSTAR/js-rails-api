class AuthorsController < ApplicationController

	def index
		authors = Author.all    # don't use an instance variable

		# render json: authors    # all data
		# render json: authors.to_json(except: [:created_at, :updated_at]) # specific data
		# render json: authors.to_json(only: [:name]) # specific data
		# render json: authors.to_json(include: :books) # specific data
		# render json: authors.to_json(include: {books: {only: :title}}) # specific data
                     
                    #OR 
        # render json: AuthorSerializer.new(authors)
        render json: AuthorSerializer.new(authors, {include: [:books]})

        #in rails app
		# respond_to |format|
		# 	format.html {render :index}
		# 	format.json {render json: @authors}
		# end
	end
end
