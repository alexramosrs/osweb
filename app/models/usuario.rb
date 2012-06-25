class Usuario < ActiveRecord::Base
  attr_accessible :login, :nome, :senha, :senha_confirmation
  validates :nome,  :presence => true
  validates :login, :presence => true,
	                :uniqueness => true
  validates :senha, :presence => true,
 		            :length => {:minimum => 5, :maximum => 40},
		            :confirmation => true
  validates_confirmation_of :senha
end
