class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

def aktywacja(a)
  @user=User.find_by(id: a)
  if @user.account_activation = true
    @user.account_activation=false
  else
    @user.account_activation=true
  end
  @user.save
end

end
