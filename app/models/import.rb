class Import

  def self.import (file)
    CSV.foreach(file.path, :headers => true) do |row|

      Business.create_or_update row
      Client.create_or_update row
      Feed.create_or_update row
    #   @business = Business.find_by_business_phone(row)
    #   if @business.nil?
    #     Business.create (business_hash_base)
    #   else
    #     @business.update(business_hash_base)
    #   end
    #
    #   @client = Client.find_by_client_name(row[BusinessFeatures::CLIENT_NAME])
    #   if @client.nil?
    #     Client.create ({client_name: row[BusinessFeatures::CLIENT_NAME]})
    #   else
    #     # @client.update({client_name: row[0]})
    #   end
    #
    #   @feed = Feed.find_by_listing_id(row[BusinessFeatures::LISTING_ID])
    #   if @feed.nil?
    #     Feed.create (feed_hash_base)
    #   else
    #     @feed.update (feed_hash_base)
    #   end
    # end
      end
    end

end