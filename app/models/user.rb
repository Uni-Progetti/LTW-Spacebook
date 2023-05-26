class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :trackable, :lockable, :recoverable, :rememberable, :validatable, :timeoutable#, :omniauthable, omniauth_providers: [:google_oauth2]

  #acts_as_user :roles => [ :manager, :admin, :user ]    #RUOLI DEFINITI PER IL CONTROLLO AUTORIZZAZIONI DI CANARD
  ROLES = %i[manager admin user]                        #RUOLI MOSTRATI NELLE CHECKBOX DI SIGNUP(MANTENERE LO STESSO ORDINE DI :roles !!!)
  
  before_save :add_default_role, :manager_req

  def manager_req
    if self.requested_manager=='true'
      User.where(role: 'admin').each do |admin|
        AdminMailer.with(user: self).request_manager_role_email(admin.email).deliver_now
      end
    end
  end

  def add_default_role
    if self.role==nil
      self.role='user'
      self.save
    end
  end
end
