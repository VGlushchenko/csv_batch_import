class Business < ActiveRecord::Base

  has_many :Feed

  def self.create_or_update (row)
    @business = Business.find_by_business_phone(business_hash_base(row)[:business_phone])
    if @business.nil?
      Business.create (business_hash_base row)
    else
      @business.update(business_hash_base row)
    end
  end

  private

    def self.business_hash_base (row)
      {
          business_name: row[BusinessFeatures::BUSINESS_NAME],
          business_phone: row[BusinessFeatures::BUSINESS_PHONE],
          business_description: row[BusinessFeatures::BUSINESS_DESCRIPTION]
      }
    end

end
