module Frank
  class Profile < ActiveRecord::Base
    # include Encryption
    has_many :entries
    has_many :comments
    has_many :moods
    has_many :love_banks
    belongs_to :family

    ### Validations
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }

    # Query for entries that the partner has made
    # Any entries that have not been included yet in the daily, will be.
    # otherwise send the entries since the last entry ID
    def partners_entries
      last_report_id = 0
      last_report_id = last_daily_report_id unless last_daily_report_id.nil?
      Entry.where("linked_profile_id =? and received = true and private != true and id > ?", id, last_report_id)
    end

    ### Encryption
    # attr_encrypted :email, key: encryption_key, :encode => true
    # attr_encrypted :phone, key: encryption_key, :encode => true

    ### stores the email to uppercase so that searches for the encrypted value are case insensitive
    # def email=(value)
    #   write_attribute(:encrypted_email, value.downcase)
    # end
  end
end
