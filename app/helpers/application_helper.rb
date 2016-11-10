module ApplicationHelper
	def full_title(page_title = '')
		base_title = 'Just for fun'
		if page_title.empty?
			base_title
		else
			"%s | %s" % [page_title, base_title]
		end
	end
end
