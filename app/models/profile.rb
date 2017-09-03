class Profile < ApplicationRecord
  belongs_to :user

  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :user_image, styles: { medium: "300x300>", thumb: "100x100>" }

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :user_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
