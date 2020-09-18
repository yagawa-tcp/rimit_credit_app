class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'カテゴリーを選択' },
    { id: 2, name: '食費' },
    { id: 3, name: '交通費' },
    { id: 4, name: '生活費' },
    { id: 5, name: '交際費' },
    { id: 6, name: '衣服' },
    { id: 7, name: '美容' },
    { id: 8, name: '娯楽' },
    { id: 9, name: '光熱費' },
    { id: 10, name: 'その他' }
  ]
end
