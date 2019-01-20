module Authors
  class AccountsController < AuthorController
    
    def edit
    end

    def update_infor
      current_author.update(author_params)
    end

    private
      # Never trust parameters from the scary internet, only allow the white list through.
      def author_params
        params.require(:author).permit(:name, :email, :bio)
      end
  end
end