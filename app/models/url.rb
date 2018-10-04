require 'uri'

class Url < ActiveRecord::Base
	# validates :long_url, format: { with: %r{https?://.+}i, message: "Url must begin with https://"}, presence: true
	validates :long_url, :format => URI::regexp(%w(http https)), presence: true
	validates :short_url, presence: true
	after_initialize :generate_short_url, if: :new_record?

	def self.retrieve_short_url(long_url)
		url = find_by(long_url: long_url)
		# url.short_url if url
		url ? url.short_url : flash[:notice] = "Short url already exixts"
	end

	def generate_short_url
		# create a new short url 
		self.short_url = SecureRandom.hex(5) 
	end
 end
