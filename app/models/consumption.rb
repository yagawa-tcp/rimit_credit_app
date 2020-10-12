class Consumption < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to :user
    #空の投稿を保存できないようにする
    validates :product, :money, presence: true

    #選択が「--」のままになっていないか
    with_options numericality: { other_than: 1 } do
      validates :category_id
    end
end
