class Feed < ActiveRecord::Base

  belongs_to :Business
  belongs_to :Client

  def self.create_or_update (row)
    @feed = Feed.find_by_listing_id(feed_hash_base(row)[:listing_id])

    if @feed.nil?
      Feed.create (feed_hash_base row)
    else
      @feed.update (feed_hash_base row)
    end

  end

  private

    def self.feed_hash_base (row)
      {
          listing_id:        row[BusinessFeatures::LISTING_ID],
          client_name:       row[BusinessFeatures::CLIENT_NAME],
          business_phone:    row[BusinessFeatures::BUSINESS_PHONE],
          address_1:         row[BusinessFeatures::ADDRESS_1],
          address_2:         row[BusinessFeatures::ADDRESS_2],
          billable_duration: row[BusinessFeatures::BILLABLE_DURATION],
          ctn:               row[BusinessFeatures::CTN],
          city:              row[BusinessFeatures::CITY],
          payout:            row[BusinessFeatures::PAYOUT],
          zip:               row[BusinessFeatures::ZIP],
          category_1:        row[BusinessFeatures::CATEGORY_1],
          category_2:        row[BusinessFeatures::CATEGORY_2],
          keywords:          row[BusinessFeatures::KEYWORDS]
      }
    end

end
