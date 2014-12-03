# coding: utf-8
class Micropost < ActiveRecord::Base
  # rails3の機能
  # validate :content, length: { maximum: 140 }
  
  validates_length_of :content, maximum: 140, message: "140文字以内で入力してください。"
  validates_length_of :content, minimum: 1, message: "何も入力されていません。"
end
