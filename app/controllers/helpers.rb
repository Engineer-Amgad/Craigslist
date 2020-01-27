
class Helpers
  
    def self.current_user(session_hash)
      @user = User.find_by(id: session_hash[:user_id])
    end
  
    def self.is_logged_in?(session_hash)
      !!session_hash[:user_id]
    end
    
    def self.is_ad_creater?(params_id, session_hash)
      Ad.find(params_id).user && Ad.find(params_id).user.id == session_hash
    end 

  end