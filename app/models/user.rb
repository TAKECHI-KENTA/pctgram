class User < ApplicationRecord
  name_REGEX =/\A.{1,15}\z/
  mail_REGEX =/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :name, presence: true,
                    format: { with: name_REGEX
                      #, message: "名前は15文字以内にしてください"　を入れたい
                    }
  validates :email, presence: true,
                    format: { with: mail_REGEX
                       #, message: "メールアドレスが正しくありません" を入れたい
                    }
  
  has_secure_password
  VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]{8,32}\z/i  #https://techtechmedia.com/password-validate-expression/ で確認
  validates :password, presence: true,
                       format: { with: VALID_PASSWORD_REGEX
                       }  #, message: "パスワードは半角8~32文字のアルファベット・数字それぞれ１文字以上含む必要があります" を入れたい
                       
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
