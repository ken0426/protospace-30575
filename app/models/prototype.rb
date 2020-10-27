class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
#   has_one_attachedメソッド
# 各レコードとファイルを1対1の関係で紐づけるメソッドです。
# has_one_attachedメソッドを記述したモデルの各レコードは、それぞれ1つのファイルを添付できます。
  
  

# validates :カラム名, バリデーションの種類
# 【バリデーション】
# データを登録する際に、一定の制約をかけることをいいます。たとえば以下のようなものがあります。

# 空のデータが登録できないようにする（今回のようなブログ記事など）
# すでに登録されている文字列を登録できないようにする（メールアドレスの登録など）
# 文字数制限をかける（パスワードなど）
# バリデーションを設ける際は、モデルにvalidatesメソッドを記述します。
 validates :title, presence: true 
 validates :catch_copy, presence: true 
 validates :concept, presence: true 
 validates :image, presence: true
end
