class Cadet < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :events, through: :attendances
    has_secure_password
    validates :password, confirmation: { case_sensitive: true }
    validates :username, :uniqueness => { :case_sensitive => false }
    
    validates :school, :position, :course, :gradYear, :flight, :presence => true
    
    validates :lastName,
        presence: true,
        length: {maximum: 50},
        allow_nil: false
        
    validates :firstName,
        presence: true,
        length: {maximum: 50},
        allow_nil: false
        
    validates :email,
        presence: true,
        length: {maximum: 100},
        allow_nil: false,
        format: { with: URI::MailTo::EMAIL_REGEXP } 
        
    validates :phoneNumber,
        presence: true,
        length: {maximum: 50},
        allow_nil: false
        
    validates :username,
        presence: true,
        length: {maximum: 100},
        allow_nil: false,
        :uniqueness => { :case_sensitive => false }
    
    validates :password,
        :if => :password,
        presence: true,
        length: {maximum: 100},
        allow_nil: false
    
    
    include PgSearch
    pg_search_scope :search_by_full_name, against: [:firstName, :lastName],
        using: {
            tsearch: {
                prefix: true
            }
        }
        
    def pt_attendance
    
        @PT_percent = 0
        @total_PT = 0
        @pres_PT = 0
        @attendances = self.attendances
    
        @attendances.each do |attendance|
            if attendance.event.primaryType == "PT"
                @total_PT += 1
                if attendance.attended == 1
                    @pres_PT += 1
                elsif attendance.attended == 2
                    @pres_PT += 0.5
                end
            end
        end
        if @total_PT != 0
            @PT_percent = @pres_PT.to_f / @total_PT.to_f * 100
        end
        @PT_percent
    end
    
    def llab_attendance
    
        @llab_percent = 0
        @total_llab = 0
        @pres_llab = 0
        @attendances = self.attendances
    
        @attendances.each do |attendance|
            if attendance.event.primaryType == "LLAB"
                @total_llab += 1
                
                if attendance.attended == 1
                    @pres_llab += 1
                elsif attendance.attended == 2
                    @pres_llab += 0.5
                end
            end
        end
        if @total_llab != 0
            @llab_percent = @pres_llab.to_f / @total_llab.to_f * 100
        end
        @llab_percent
    end
end