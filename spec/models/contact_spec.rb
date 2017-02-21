require 'rails_helper'

describe Contact do
  #名前,E-mail,内容があれば有効な状態であること
  it "is valid with name,email and content"
    contact = Contact.new(title: '営業時間について', name:"Daisuke Aoki", content:'何時営業開始ですか？')
    expect(contact).to be_valid
  end

  #
