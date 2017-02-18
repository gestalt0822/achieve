require 'rails_helper'

describe Blog do
  #タイトルがあれば有効な状態であること
  it "is valid with title"
    blog = Blog.new(title: '宮岡', content: '暑いです')
    expect(blog).to be_valid

  #タイトルがなければ無効であること
  it "is invalid without a title"
    blog = Blog.new
    expect(blog).not_to be_valid
end
