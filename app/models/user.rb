class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :nickname, presence: true
         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+{6,}\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字を含めて設定してください'
         validates :sex, presence: true
         validates :age, presence: true

         has_many :breaks
         end

