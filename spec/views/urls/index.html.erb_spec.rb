require 'rails_helper'

# RSpec.describe "urls/index.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe 'urls/index.html.erb', type: :view do
	describe 'render ur submission', type: :feature do
	  it "shows the form" do
	  	visit("/urls")
	  	click_link "shortlink"
	  	expect(page).to have_content "generate new link"
	  end
	end

	describe "display long and short url", type: :feature do
		before do
			# crete url object
		end	
		it "shows created long and short url" do

		end
	end

end