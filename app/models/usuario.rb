class Usuario < ActiveRecord::Base
  attr_accessible :login, :nome, :senha, :senha_confirmation, :email
  validates :nome,  :presence => true
  validates :login, :presence => true,
	                :uniqueness => true
  validates :senha, :presence => true,
 		            :length => {:minimum => 5, :maximum => 40},
		            :confirmation => true
  validates_confirmation_of :senha
  
  def authenticate password
    #user = find_by_username(username)
    if self && self.senha == password
      self
    else
      nil
    end
  end  
end
