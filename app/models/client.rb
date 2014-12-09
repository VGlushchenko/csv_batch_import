class Client < ActiveRecord::Base

  has_many :Feed

  def self.create_or_update (row)
    @client = Client.find_by_client_name(row[BusinessFeatures::CLIENT_NAME])
    if @client.nil?
      Client.create ({client_name: row[BusinessFeatures::CLIENT_NAME]})
    else
      # @client.update({client_name: row[BusinessFeatures::CLIENT_NAME]})
    end
  end

end
